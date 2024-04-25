import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class EditJobDetailsDialog2 extends StatefulWidget {
  const EditJobDetailsDialog2({Key? key}) : super(key: key);

  @override
  _EditJobDetailsDialog2State createState() => _EditJobDetailsDialog2State();
}

class _EditJobDetailsDialog2State extends State<EditJobDetailsDialog2> {
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
                  height: media.width * 0.10,
                ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
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
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
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
                            fontSize: 13),
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
