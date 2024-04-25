import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class FinishDialog extends StatefulWidget {
  const FinishDialog({Key? key}) : super(key: key);

  @override
  _FinishDialogState createState() => _FinishDialogState();
}

class _FinishDialogState extends State<FinishDialog> {
  
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
                                color: const Color.fromARGB(255, 199, 202, 216),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 40,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Image.asset(
                              'assets/img/shield.png',
                              width: 70,
                              height: 70,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Subscription Successfully",
                              style: TextStyle(
                                color: TColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "You have updated your subscriprion satus and you will be able to access pro features staring now.",
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 48,
                          child: CustomButton(
                            color: TColor.placeholder,
                            textColor: TColor.white,
                            text: 'Finish',
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
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
