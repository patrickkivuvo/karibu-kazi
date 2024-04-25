import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class RaiseConcern1Dialog extends StatefulWidget {
  const RaiseConcern1Dialog({Key? key}) : super(key: key);

  @override
  _RaiseConcern1DialogState createState() =>
      _RaiseConcern1DialogState();
}

class _RaiseConcern1DialogState
    extends State<RaiseConcern1Dialog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      "Raise Concern",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 199, 202, 216),
                      ),
                      child: const Center(
                        child: Text(
                          'X',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Raised concerns are addressed accorging to our terms and policies within 48 business hours  ",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
              Center(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/img/feedback.png',
                        width: 30,
                        height: 30,
                        color: TColor.placeholder,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "We apologize for any inconvenience",
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                       textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "We have received your report. Our moderators will look into this issue and respond in appropiate action.",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                height: 48,
                child: CustomButton(
                  color: TColor.white,
                  textColor: TColor.placeholder,
                  text: 'Got It',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
