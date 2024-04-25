import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/raise_concern1.dart';

class RaiseConcernDialog extends StatefulWidget {
  const RaiseConcernDialog({Key? key}) : super(key: key);

  @override
  _RaiseConcernDialogState createState() => _RaiseConcernDialogState();
}

class _RaiseConcernDialogState extends State<RaiseConcernDialog> {
  final TextEditingController _controller = TextEditingController();
  String? _selectedJob = 'Select Category';
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
              const SizedBox(
                height: 6,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: const Color.fromARGB(255, 199, 202, 216),
                      width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Concern Category ",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              items: <String>[
                                'Select Category',
                                'Electrician     Requires Proof',
                                'Photography     Requires Proof',
                                'Videography     Requires Proof',
                                'Graphics Design     Requires Proof',
                                'Fabric Cleaning',
                                'Dog Walking'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedJob = newValue;
                                });
                              },
                              value: _selectedJob,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Describe the issue",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Container(
                child: TextField(
                  controller: _controller,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: 'Enter Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                height: 48,
                child: CustomButton(
                  color: TColor.placeholder,
                  textColor: TColor.white,
                  text: 'Submit for Review',
                  onPressed: () {
                     Navigator.pop(context);
                    showGeneralDialog(
                      barrierLabel: 'Dialog',
                      barrierDismissible: true,
                      context: context,
                      pageBuilder: (ctx, anim1, anim2) =>
                          const RaiseConcern1Dialog(),
                      transitionBuilder: (ctx, anim1, anim2, child) =>
                          ScaleTransition(
                        scale: anim1,
                        child: child,
                      ),
                    );
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
