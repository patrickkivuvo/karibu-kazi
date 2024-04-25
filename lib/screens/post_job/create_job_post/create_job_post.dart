import 'package:flutter/material.dart';

import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';

import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/post_job/add_job_details/add_job_deatails.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({super.key});

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  final TextEditingController _controller = TextEditingController();
  String? _selectedJob = 'Select Job';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Create a Job Post",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FullColoredLine(),
                const Text(
                  "Give your post a title and subscribe what the job is about including the roles and responsibilities it involves. ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
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
                  height: media.width * 0.30,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Create Post',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddJobDetails(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FullColoredLine extends StatelessWidget {
  const FullColoredLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: FullColoredLinePainter(),
      ),
    );
  }
}

class FullColoredLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = TColor.placeholder
      ..strokeWidth = 4;

    final paint2 = Paint()
      ..color = const Color.fromARGB(255, 202, 196, 196)
      ..strokeWidth = 4;

    final double halfWidth = size.width / 2;
    final Offset startPoint1 = Offset(0, size.height / 2);
    final Offset endPoint1 = Offset(halfWidth * 0.3,
        size.height / 2); // Adjusted endpoint for the first color

    final Offset startPoint2 = Offset(halfWidth * 0.3,
        size.height / 2); // Adjusted start point for the second color
    final Offset endPoint2 = Offset(size.width, size.height / 2);

    canvas.drawLine(startPoint1, endPoint1, paint1);
    canvas.drawLine(startPoint2, endPoint2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
