import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/auth_ui/register_phone%20/register_phone.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
      ),
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
                  "You are about to",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Switch Accounts",
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
                  "Which profile do you wish to use?",
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
                    CustomButtonAccount(
                      iconData: Icons.person,
                      buttonText: 'Worker Account',
                      buttonText1: 'I have skills people need',
                      onPressed: () {
                        setState(() {
                          isWorkerActive = true;
                          isEmployerActive = false;
                        });
                      },
                      isActive: isWorkerActive,
                    ),
                    CustomButtonAccount(
                      iconData: Icons.person,
                      buttonText: 'Employer Account',
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
                SizedBox(
                  height: media.width * 0.55,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Go to Account',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPhone(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonAccount extends StatefulWidget {
  final IconData iconData;
  final String buttonText;
  final String buttonText1;
  final Color iconColor;
  final double iconSize;
  final Color buttonTextColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final bool isActive;

  const CustomButtonAccount({
    required this.iconData,
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
  _CustomButtonAccountState createState() => _CustomButtonAccountState();
}

class _CustomButtonAccountState extends State<CustomButtonAccount> {
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
            side: BorderSide(
              color: widget.isActive ?TColor.placeholder : Colors.transparent,
              width: 2, 
            ),
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
              width: 70,
              height: 70.74,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 230, 234, 238),
                shape: BoxShape.circle,
              ),
              child: Icon(
                widget.iconData,
                color: widget.isActive ? TColor.placeholder : Colors.black,
                size: widget.iconSize,
              ),
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Text(
              widget.buttonText,
              style: TextStyle(
                color:  Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              widget.buttonText1,
              style: TextStyle(
                color: Colors.grey ,
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
