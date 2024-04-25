import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/auth_ui/register_phone%20/register_phone.dart';
import 'package:karibu_kazi/screens/auth_ui/worker/register_phone%20/register_phone.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isWorkerActive = false;
  bool isEmployerActive = false;

  @override
  void initState() {
    super.initState();
    isWorkerActive = false;
    isEmployerActive = false;
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.07,
                ),
                const Text(
                  "Welcome to",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Karibu Kazi",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const Text(
                  "You want to join as?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButtonWelcome(
                      imagePath: 'assets/img/worker.png',
                      buttonText: 'Worker',
                      buttonText1: 'I have skills people need',
                      onPressed: () {
                        setState(() {
                          // Set isActive for Worker button to true and Employer button to false
                          isWorkerActive = true;
                          isEmployerActive = false;
                        });
                      },
                      isActive: isWorkerActive, 
                    ),
                    CustomButtonWelcome(
                      imagePath: 'assets/img/employer.png',
                      buttonText: 'Employer',
                      buttonText1: 'I have jobs to give out',
                      onPressed: () {
                        setState(() {
                          isEmployerActive = true;
                          isWorkerActive = false;
                        });
                      },
                      isActive: isEmployerActive,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: media.height * 0.13,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.02,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Continue to Account',
                    onPressed: () {
                      if (isWorkerActive) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPhone1(),
                          ),
                        );
                      } else if (isEmployerActive) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPhone(),
                          ),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWelcome extends StatefulWidget {
  final String imagePath;
  final String buttonText;
  final String buttonText1;
  final Color iconColor;
  final double iconSize;
  final Color buttonTextColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final bool isActive;

  const CustomButtonWelcome({
    required this.imagePath,
    required this.buttonText,
    required this.buttonText1,
    this.iconColor = Colors.black,
    this.iconSize = 40,
    this.buttonTextColor = Colors.black,
    this.buttonFontSize = 14,
    required this.onPressed,
    required this.isActive,
    final Key? key,
  }) : super(key: key);

  @override
  _CustomButtonWelcomeState createState() => _CustomButtonWelcomeState();
}

class _CustomButtonWelcomeState extends State<CustomButtonWelcome> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Container(
        width: media.width * 0.45,
        height: media.height * 0.25,
        padding: const EdgeInsets.only(
          top: 4,
          left: 10,
          bottom: 8,
        ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 6,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50.74,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 230, 234, 238),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                widget.imagePath,
                width: 40,
                height: 40,
                color: widget.isActive ? TColor.placeholder : Colors.black,
              ),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Text(
              widget.buttonText,
              style: TextStyle(
                color: widget.isActive ? TColor.placeholder : Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.buttonText1,
              style: TextStyle(
                color: Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
