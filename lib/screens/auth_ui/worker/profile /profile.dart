import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/home/home_worker/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:karibu_kazi/screens/home/location/location.dart';

class ProfileWorker extends StatefulWidget {
  const ProfileWorker({super.key});

  @override
  State<ProfileWorker> createState() => _ProfileWorkerState();
}

class _ProfileWorkerState extends State<ProfileWorker> {
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
                  "Peter,",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                const Text(
                  "Karibu Kazi",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                const Text(
                  "Your profile is complete",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 199, 202, 216),
                        width: 2),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/img/profile.png',
                            height: 70,
                            width: 70,
                          ),
                    
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "Peter Njenga",
                                          style: TextStyle(
                                            color: TColor.placeholder,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: const Text(
                                            "Plumber+2. Nairobi, Runda"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomBottomNavigationBarWorker(),
                        ),
                      );
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

class CustomButtonProfile extends StatefulWidget {
  final String buttonText;

  final Color buttonTextColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final bool isActive;

  const CustomButtonProfile({
    required this.buttonText,
    this.buttonTextColor = Colors.black,
    this.buttonFontSize = 14,
    required this.onPressed,
    required this.isActive,
    final Key? key,
  }) : super(key: key);

  @override
  _CustomButtonProfileState createState() => _CustomButtonProfileState();
}

class _CustomButtonProfileState extends State<CustomButtonProfile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: ShapeDecoration(
          color: widget.isActive
              ? const Color.fromARGB(0, 100, 134, 184)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: widget.isActive ? TColor.placeholder : Colors.transparent,
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
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.isActive ? TColor.placeholder : Colors.black,
              fontSize: widget.buttonFontSize,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
