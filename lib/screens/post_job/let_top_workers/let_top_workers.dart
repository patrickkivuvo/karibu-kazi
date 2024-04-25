import 'package:flutter/material.dart';

import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/select_pro_workers.dart';
import 'package:karibu_kazi/screens/post_job/post_without_invitations/post_without_invitations.dart';

class LetTopWorkers extends StatefulWidget {
  const LetTopWorkers({super.key});

  @override
  State<LetTopWorkers> createState() => _LetTopWorkersState();
}

class _LetTopWorkersState extends State<LetTopWorkers> {
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
                  height: media.width * 0.03,
                ),
                const Text(
                  "Let Top Workers",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  "Know you Posted",
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
                  "You want to invite pro workers?",
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
                      buttonText: 'Post and Invite',
                      buttonText1:
                          'Pro-Workers will be notified immediately but anyone can bid',
                      onPressed: () {
                        setState(() {
                          // Set isActive for Worker button to true and Employer button to false
                          isWorkerActive = true;
                          isEmployerActive = false;
                        });
                      },
                      isActive: isWorkerActive, // Pass the isActive state
                    ),
                    CustomButtonWelcome(
                       imagePath: 'assets/img/employer.png',
                      buttonText: 'Post without Invite',
                      buttonText1:
                          'Take your post to the public for workers to bid on',
                      onPressed: () {
                        setState(() {
                          // Set isActive for Employer button to true and Worker button to false
                          isEmployerActive = true;
                          isWorkerActive = false;
                        });
                      },
                      isActive: isEmployerActive, // Pass the isActive state
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
                    text: 'Publish Post',
                    onPressed: () {
                      if (isWorkerActive) {
                        showGeneralDialog(
                          barrierLabel: 'Dialog',
                          barrierDismissible: true,
                          context: context,
                          pageBuilder: (ctx, anim1, anim2) =>
                              const ProWorkersDialog(),
                          transitionBuilder: (ctx, anim1, anim2, child) =>
                              ScaleTransition(
                            scale: anim1,
                            child: child,
                          ),
                        );
                      } else if (isEmployerActive) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PostWithoutInvitation(),
                          ),
                        );
                      }
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
        height: media.height * 0.30,
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
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.isActive ? TColor.placeholder : Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.buttonText1,
              // textAlign: TextAlign.center,
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
