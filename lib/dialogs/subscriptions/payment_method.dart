import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/subscriptions/finish.dart';
import 'package:karibu_kazi/dialogs/subscriptions/widgets/card.dart';
import 'package:karibu_kazi/dialogs/subscriptions/widgets/phonenumber.dart';



class PaymentMethodDialog extends StatefulWidget {
  const PaymentMethodDialog({Key? key}) : super(key: key);

  @override
  _PaymentMethodDialogState createState() => _PaymentMethodDialogState();
}

class _PaymentMethodDialogState extends State<PaymentMethodDialog> {
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
    Widget buildOrdersWidget() {
      if ( isWorkerActive) {
        return  const PhoneNumber();
      } else if (isEmployerActive){
        return const CardP();
      }else {
        // Handle other cases if needed
        return const Column(
          children: [
            
          ],
        ); 
      }
    }

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color.fromARGB(255, 201, 198, 198),
            Color.fromARGB(255, 190, 164, 133),
          ],
        ),
      ),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: media.width * 0.01,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Start Your Subscription Plan',
                          style: TextStyle(
                            color: TColor.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 28,
                            width: 28,
                            margin: const EdgeInsets.only(bottom: 2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'X',
                                style: TextStyle(
                                  color: TColor.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 199, 202, 216),
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 40,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Monthly Plan ",
                                              style: TextStyle(
                                                color: TColor.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "Payment",
                                              style: TextStyle(
                                                color: TColor.secondaryText,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "1,250 Ksh",
                                          style: TextStyle(
                                            color: TColor.secondaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Select a Payment Method",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButtonWelcome(
                                imagePath: 'assets/img/mpesa.png',
                                buttonText: 'Mpesa',
                                buttonText1:
                                    'Pay subscription fee from an Mpesa phone number',
                                onPressed: () {
                                  setState(() {
                                    // Set isActive for Worker button to true and Employer button to false
                                    isWorkerActive = true;
                                    isEmployerActive = false;
                                  });
                                },
                                isActive:
                                    isWorkerActive, // Pass the isActive state
                              ),
                              CustomButtonWelcome1(
                                imagePath: 'assets/img/visa.png',
                                imagePath1: 'assets/img/m_card.png',
                                buttonText: ' Bank Card',
                                buttonText1:
                                    'Pay subscription fee from a Bank account or Mpesa Global pay',
                                onPressed: () {
                                  setState(() {
                                    // Set isActive for Employer button to true and Worker button to false
                                    isEmployerActive = true;
                                    isWorkerActive = false;
                                  });
                                },
                                isActive:
                                    isEmployerActive, // Pass the isActive state
                              ),
                            ],
                          ),
                          SizedBox(
                            height: media.width * 0.04,
                          ),
                            buildOrdersWidget(),
                            SizedBox(
                            height: media.width * 0.15,
                          ),
                                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Proceed to Pay',
                    onPressed: () {
                      if (isWorkerActive) {
                        Navigator.pop(context);
                        showGeneralDialog(
                                    barrierLabel: 'Dialog',
                                    barrierDismissible: true,
                                    context: context,
                                    pageBuilder: (ctx, anim1, anim2) =>
                                        const  FinishDialog(),
                                    transitionBuilder: (ctx, anim1, anim2, child) =>
                                        ScaleTransition(
                                      scale: anim1,
                                      child: child,
                                    ),
                                  );
                      } else if (isEmployerActive) {
                          Navigator.pop(context);
                        showGeneralDialog(
                                    barrierLabel: 'Dialog',
                                    barrierDismissible: true,
                                    context: context,
                                    pageBuilder: (ctx, anim1, anim2) =>
                                        const  FinishDialog(),
                                    transitionBuilder: (ctx, anim1, anim2, child) =>
                                        ScaleTransition(
                                      scale: anim1,
                                      child: child,
                                    ),
                                  );
                      }
                    },
                  ),
                ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
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
    this.buttonFontSize = 16,
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
        width: media.width * 0.35,
        height: media.height * 0.31,
        padding: const EdgeInsets.only(
          top: 8,
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
              height: 50.74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 247, 245, 245),
              ),
              child: Image.asset(
                widget.imagePath,
                width: 40,
                height: 40,
              ),
            ),
            const Spacer(),
            Text(
              widget.buttonText,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.isActive ? TColor.placeholder : Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: media.width * 0.01,
            ),
            Text(
              widget.buttonText1,
              // textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtonWelcome1 extends StatefulWidget {
  final String imagePath;
  final String imagePath1;
  final String buttonText;
  final String buttonText1;
  final Color iconColor;
  final double iconSize;
  final Color buttonTextColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final bool isActive;

  const CustomButtonWelcome1({
    required this.imagePath,
    required this.imagePath1,
    required this.buttonText,
    required this.buttonText1,
    this.iconColor = Colors.black,
    this.iconSize = 40,
    this.buttonTextColor = Colors.black,
    this.buttonFontSize = 18,
    required this.onPressed,
    required this.isActive,
    final Key? key,
  }) : super(key: key);

  @override
  _CustomButtonWelcome1State createState() => _CustomButtonWelcome1State();
}

class _CustomButtonWelcome1State extends State<CustomButtonWelcome1> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Container(
        width: media.width * 0.35,
        height: media.height * 0.31,
        padding: const EdgeInsets.only(
          top: 8,
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
              width: 80,
              height: 50.74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 247, 245, 245),
              ),
              child: Row(
                children: [
                  Image.asset(
                    widget.imagePath,
                    width: 40,
                    height: 40,
                  ),
                  Image.asset(
                    widget.imagePath1,
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(
              widget.buttonText,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.isActive ? TColor.placeholder : Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: media.width * 0.01,
            ),
            Text(
              widget.buttonText1,
              // textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
