import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';

import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/post_job/confirm_post_details/confirm_post_details.dart';

class AddJobDetails extends StatefulWidget {
  const AddJobDetails({super.key});

  @override
  State<AddJobDetails> createState() => _AddJobDetailsState();
}

class _AddJobDetailsState extends State<AddJobDetails> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  late DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('dd-MM-yyyy').format(_selectedDate);
      });
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Add Job Details",
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
                const Row(
                  children: [
                    Text(
                      "Precise Location ",
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
                      hintText: 'Search and Select Your Location',
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
                SizedBox(
                  height: media.width * 0.03,
                ),
                const Row(
                  children: [
                    Text(
                      "Location Description",
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
                      hintText: 'Road, estate, house number, floor...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                const Row(
                  children: [
                    Text(
                      "Work starts on",
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
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    readOnly: true,
                    controller: _dateController,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter Date',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      suffixIcon: InkWell(
                        onTap: () => _selectDate(context),
                        child: Image.asset(
                          'assets/img/calendar.png',
                          width: 30,
                          height: 30,
                        ),
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
                SizedBox(
                  height: media.width * 0.03,
                ),
                const Row(
                  children: [
                    Text(
                      "Estimated Budget",
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
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      hintText: 'Enter Amount',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      prefixIcon: Image.asset(
                          'assets/img/money.png',
                          width: 30,
                          height: 30,
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
                SizedBox(
                  height: media.width * 0.20,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Proceed',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConfirmPostDetails(),
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
