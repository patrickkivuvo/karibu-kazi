import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profession/profession.dart';

class CardButton extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final double buttonFontSize;
  const CardButton({
    required this.buttonText,
    this.buttonTextColor = const Color(0xff4202CA),
    this.buttonFontSize = 14,
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return CupertinoButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfessionScreen(),
          ),
        );
      },
      child: Container(
        width: media.width * 0.385,
        height: media.height * 0.17,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 18,
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
            Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: buttonTextColor,
                fontSize: buttonFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Service",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: buttonFontSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: TColor.primaryText,
                  size: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
