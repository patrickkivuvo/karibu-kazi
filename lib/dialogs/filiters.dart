import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/complete_worker_profile.dart';
import 'package:karibu_kazi/dialogs/widgets/filters.dart';

class FlitersDialog extends StatefulWidget {
  const FlitersDialog({Key? key}) : super(key: key);

  @override
  _FlitersDialogState createState() => _FlitersDialogState();
}

class _FlitersDialogState extends State<FlitersDialog> {
  TextEditingController searchController = TextEditingController();
  String? _selectedJob = 'Select Job';
  List<String> skills = [
    "Drain Cleaning",
    "Fixture Installation",
    "Leaky detection",
    "Pipe Welding",
    "Quality Assurance"
  ];

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
                      "Filters",
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
              Text(
                " Location ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  onChanged: (value) {},
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintText: 'Specify Location',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: TColor.black,
                      size: 20,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Color(0xff1E1E1E),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
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
              Center(
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Job search radius',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: Text(
                      'Clear',
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: CustomPaint(
                  painter: FullColoredLinePainter(),
                ),
              ),
              Text(
                'Budget',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 128,
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 202, 216),
                        width: 1,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            'From:',
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 13,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: TextField(
                              onChanged: (value) {},
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                hintText: 'Enter Amount',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 10,
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 202, 216),
                        width: 1,
                      ),
                    ),
                  ),
                  Container(
                    width: 125,
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 202, 216),
                        width: 1,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            'Upto:',
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 13,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: TextField(
                              onChanged: (value) {},
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                hintText: 'Enter Amount',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: TColor.placeholder,
                        width: 2,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Clear Filters',
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TColor.placeholder,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Apply Filters',
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
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

class FullColoredLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define the black and grey colors
    final Color black = TColor.placeholder;
    final Color grey = Colors.grey[400]!;

    // Draw the line
    final Paint linePaint = Paint()
      ..color = black // Black color for the line
      ..strokeWidth = 4;

    final Offset startPoint = Offset(0, size.height / 2);
    final Offset endPoint = Offset(size.width, size.height / 2);
    canvas.drawLine(startPoint, endPoint, linePaint);

    // Draw circles and text
    for (double distance = 20; distance <= 20; distance += 10) {
      drawCircleWithText(canvas, startPoint, distance, size.width, black);
    }

    // Draw the remaining circles and line with grey color
    final Paint greyPaint = Paint()
      ..color = grey // Grey color for the circles and line
      ..strokeWidth = 4;

    for (double distance = 30; distance <= 50; distance += 10) {
      drawCircleWithText(canvas, startPoint, distance, size.width, grey);
    }

    final Offset greyStartPoint = Offset(size.width * 20 / 50, size.height / 2);
    final Offset greyEndPoint = Offset(size.width, size.height / 2);
    canvas.drawLine(greyStartPoint, greyEndPoint, greyPaint);
  }

  void drawCircleWithText(Canvas canvas, Offset startPoint, double distance,
      double totalWidth, Color color) {
    final double distanceRatio =
        distance / 50; // Assuming 50km is the full width
    final double xPosition = totalWidth * distanceRatio;
    final Offset circleCenter = Offset(xPosition, startPoint.dy);
    final double circleRadius = 8;
    final Paint paint = Paint()..color = color; // Use the provided color

    canvas.drawCircle(circleCenter, circleRadius, paint);

    // Add text below the circle
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: '$distance km',
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final double textX = circleCenter.dx - textPainter.width / 2;
    final double textY = circleCenter.dy + 2 * circleRadius;
    textPainter.paint(canvas, Offset(textX, textY));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
