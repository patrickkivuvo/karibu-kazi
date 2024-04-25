import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/complete_worker_profile.dart';

class AddJobDialog extends StatefulWidget {
  const AddJobDialog({Key? key}) : super(key: key);

  @override
  _AddJobDialogState createState() => _AddJobDialogState();
}

class _AddJobDialogState extends State<AddJobDialog> {
  TextEditingController searchController = TextEditingController();
  String? _selectedJob = 'Select Job';
  List<String> skills = [
    "Drain Cleaning",
    "Fixture Installation",
    "Leaky detection",
    "Pipe Welding",
    "Quality Assurance"
  ]; // Add your list of skills here

  List<String> filteredSkills = [];
  IconData selectedIcon = Icons.file_present_outlined;

  @override
  void initState() {
    super.initState();
    filteredSkills = skills;
  }

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
                      "Add new Job",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      showGeneralDialog(
                        barrierLabel: 'Dialog',
                        barrierDismissible: true,
                        context: context,
                        pageBuilder: (ctx, anim1, anim2) =>
                            const CompleteWorkerProfileDialog(),
                        transitionBuilder: (ctx, anim1, anim2, child) =>
                            ScaleTransition(
                          scale: anim1,
                          child: child,
                        ),
                      );
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
              const Flexible(
                child: Text(
                  "Select a job you are skilled and experienced in handling to maintain a good rating and image from employers.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(bottom: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color.fromARGB(255, 199, 202, 216),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "You can work as:",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        items: <String>[
                                          'Select Job',
                                          'Electrician     Requires Proof',
                                          'Photography     Requires Proof',
                                          'Videography     Requires Proof',
                                          'Graphics Design     Requires Proof',
                                          'Fabric Cleaning',
                                          'Dog Walking'
                                        ].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Add your skills in the job",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    '2/5',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {
                      filteredSkills = skills
                          .where((skill) =>
                              skill.toLowerCase().contains(value.toLowerCase()))
                          .toList();
                    });
                  },
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                  decoration: const InputDecoration(
                    hintText: 'Find a Skill',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Color(0xff1E1E1E),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                child: Column(
                  children: [
                    for (String skill in filteredSkills) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.grey, // Change to your color
                                  width: 1,
                                ),
                                color: const Color.fromARGB(0, 100, 134, 184)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    skill,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.check,
                                    color: TColor.secondaryText,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Flexible(
                child: Text(
                  'Add Proof of experience',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 199, 204), width: 2),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 199, 202, 216),
                          ),
                          child: Center(
                            child: Icon(
                              selectedIcon,
                              color: TColor.placeholder,
                              size: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Add a Portfolio, CV or certificate",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    "Upload formats (PNG, JPG & PDF)",
                                    style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CupertinoButton(
                        onPressed: () async {
                          // Open file picker
                          FilePickerResult? result =
                              await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'png', 'jpg'],
                          );

                          if (result != null) {
                            // User has selected a file
                            setState(() {
                              // Update the selected icon based on the file type
                              if (result.files.first.extension == 'pdf') {
                                selectedIcon = Icons.picture_as_pdf;
                              } else if (result.files.first.extension ==
                                      'png' ||
                                  result.files.first.extension == 'jpg') {
                                selectedIcon = Icons.image;
                              }
                            });
                          }
                        },
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color.fromARGB(255, 199, 202, 216),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 48,
                child: CustomButton(
                  color: TColor.placeholder,
                  textColor: TColor.white,
                  text: 'Add to my Jobs',
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
    );
  }
}
