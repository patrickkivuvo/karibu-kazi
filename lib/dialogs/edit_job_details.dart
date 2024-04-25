import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class EditJobDetailsDialog extends StatefulWidget {
  const EditJobDetailsDialog({Key? key}) : super(key: key);

  @override
  _EditJobDetailsDialogState createState() => _EditJobDetailsDialogState();
}

class _EditJobDetailsDialogState extends State<EditJobDetailsDialog> {
  TextEditingController searchController = TextEditingController();
  String? _selectedJob = 'Select Job';
  final TextEditingController _controller = TextEditingController();
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
    var media = MediaQuery.of(context).size;
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
                      "Edit Job Details",
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
              const Row(
                children: [
                  Text(
                    "Job Title ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " *",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
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
              SizedBox(
                height: media.width * 0.07,
              ),
              const Row(
                children: [
                  Text(
                    "Job Description",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " *",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              Container(
                child: TextField(
                  controller: _controller,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: 'Enter job expectations',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: media.width * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 130,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: TColor.placeholder, width: 1),
                          ),
                        ),
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: TextButton(                  
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(TColor.white),
                        backgroundColor:
                            MaterialStateProperty.all(TColor.placeholder),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                            color: TColor.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
