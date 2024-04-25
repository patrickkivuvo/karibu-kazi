import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/subscriptions/payment_method.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: media.width * 0.12,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Karibu',
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/img/shield.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Kazi',
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Become a Pro',
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
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
                            height: 320,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Here's What you Get as a Pro",
                                      style: TextStyle(
                                        color: TColor.placeholder,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 199, 202, 216),
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            height: 70,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Icon(
                                                  Icons.notifications_outlined,
                                                  size: 20,
                                                  color: TColor.placeholder,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Instant Post Notifications",
                                                        style: TextStyle(
                                                          color: TColor.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Expanded(
                                                        child: Text(
                                                          "Employers can invite pro-workers to bid and they will be immediately notified to bid first.",
                                                          style: TextStyle(
                                                            color: TColor
                                                                .secondaryText,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            height: 70,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/img/p_user.png',
                                                  width: 40,
                                                  height: 40,
                                                  color: TColor.placeholder,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Invitations to Bid",
                                                        style: TextStyle(
                                                          color: TColor.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Expanded(
                                                        child: Text(
                                                          "Employers can invite pro-workers to bid and they will be immediately notified to bid first.",
                                                          style: TextStyle(
                                                            color: TColor
                                                                .secondaryText,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            height: 70,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/img/pin.png',
                                                  width: 40,
                                                  height: 40,
                                                  color: TColor.placeholder,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Sticky Alerts on Notifications Area",
                                                        style: TextStyle(
                                                          color: TColor.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Expanded(
                                                        child: Text(
                                                          "Employers can invite pro-workers to bid and they will be immediately notified to bid first.",
                                                          style: TextStyle(
                                                            color: TColor
                                                                .secondaryText,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Select a Subscription Package",
                            style: TextStyle(
                              color: TColor.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButtonWelcome(
                                buttonText2: 'Monthly Plan',
                                buttonText: ' 1,250 Ksh',
                                buttonText1:
                                    'Valid from 11 Mar to 12 Apr then require renewal',
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
                              CustomButtonWelcome(
                                buttonText2: 'Annual Plan',
                                buttonText: ' 10,000 Ksh',
                                buttonText1:
                                    'Valid from 11 Mar 2024 to 12 Apr 2025 then require renewal',
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
                            height: media.width * 0.15,
                          ),
                          SizedBox(
                            height: 48,
                            width: double.infinity,
                            child: InkWell(
                              onTap: () {
                                if (isWorkerActive) {
                                  showGeneralDialog(
                                    barrierLabel: 'Dialog',
                                    barrierDismissible: true,
                                    context: context,
                                    pageBuilder: (ctx, anim1, anim2) =>
                                        const  PaymentMethodDialog(),
                                    transitionBuilder: (ctx, anim1, anim2, child) =>
                                        ScaleTransition(
                                      scale: anim1,
                                      child: child,
                                    ),
                                  );
                                } else if (isEmployerActive) {
                                 showGeneralDialog(
                                    barrierLabel: 'Dialog',
                                    barrierDismissible: true,
                                    context: context,
                                    pageBuilder: (ctx, anim1, anim2) =>
                                        const  PaymentMethodDialog(),
                                    transitionBuilder: (ctx, anim1, anim2, child) =>
                                        ScaleTransition(
                                      scale: anim1,
                                      child: child,
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: TColor.placeholder),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/img/shield.png',
                                          width: 20,
                                          height: 20,
                                          color: TColor.white,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Subscribe to Pro",
                                          style: TextStyle(
                                              color: TColor.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
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
  final String buttonText2;
  final String buttonText;
  final String buttonText1;
  final Color iconColor;
  final double iconSize;
  final Color buttonTextColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final bool isActive;

  const CustomButtonWelcome({
    required this.buttonText2,
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
        height: media.height * 0.26,
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
            Text(
              widget.buttonText2,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.isActive ? TColor.placeholder : Colors.black,
                fontSize: widget.buttonFontSize,
                fontWeight: FontWeight.bold,
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
