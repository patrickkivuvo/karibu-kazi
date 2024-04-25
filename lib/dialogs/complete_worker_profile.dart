import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class CompleteWorkerProfileDialog extends StatefulWidget {
  const CompleteWorkerProfileDialog({Key? key}) : super(key: key);

  @override
  _CompleteWorkerProfileDialogState createState() =>
      _CompleteWorkerProfileDialogState();
}

class _CompleteWorkerProfileDialogState
    extends State<CompleteWorkerProfileDialog> {
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
                      "Complete your Worker Profile",
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
                      "You will only have to do it once",
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Add details about what you are skilled in for us to match you with the jobs you can bid for.",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
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
