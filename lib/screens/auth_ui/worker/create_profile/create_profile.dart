import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/common_widgets/custom_input_field.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/auth_ui/worker/create_profile1/create_profile.dart';

class CreateProfile1 extends StatefulWidget {
  const CreateProfile1({super.key});

  @override
  State<CreateProfile1> createState() => _CreateProfile1State();
}

class _CreateProfile1State extends State<CreateProfile1> {
  bool phoneNumberRegisterFieldError = false;
  String phoneNumberUser = "";
  bool isPressed = false;

  bool isWorkerActive = false;
  bool isEmployerActive = false;

  File? _image;

  Future getImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  Future getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  @override
  void initState() {
    super.initState();
    isWorkerActive = false;
    isEmployerActive = false;
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
          "Help Others Know You",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.01,
                ),
                const FullColoredLine(),
                SizedBox(
                  height: media.width * 0.01,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: ClipOval(
                              child: _image != null
                                  ? Image.file(
                                      _image!,
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      'assets/img/profile.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: 100,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Add Profile Photo",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text("Upload or take new photo"),
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
                          onPressed: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) {
                                return CupertinoActionSheet(
                                  title: const Text('Select Photo'),
                                  actions: <Widget>[
                                    CupertinoActionSheetAction(
                                      onPressed: () {
                                        getImageFromCamera();
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Take Photo'),
                                    ),
                                    CupertinoActionSheetAction(
                                      onPressed: () {
                                        getImageFromGallery();
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Choose from Gallery'),
                                    ),
                                  ],
                                  cancelButton: CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                );
                              },
                            );
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
                const Row(
                  children: [
                    Text(
                      "Full Name ",
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
                const CustomInputField(
                  label: "Enter Name",
                  prefixIcon: Icons.person_2_outlined,
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const Row(
                  children: [
                    Text(
                      "ID Number",
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
                const CustomInputField(
                  label: "Enter Number",
                  prefixIcon: Icons.phone_android_rounded,
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const Row(
                  children: [
                    Text(
                      "Phone Number",
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
                IntlPhoneField(
                  disableLengthCheck: true,
                  decoration: InputDecoration(
                    // labelText: 'Phone number',
                    hintText: '748481414',
                    hintStyle: TextStyle(color: TColor.secondaryText),
                    labelStyle: TextStyle(color: TColor.secondaryText),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: TColor.secondaryText),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: phoneNumberRegisterFieldError == true
                            ? Colors.red
                            : TColor.secondaryText,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: phoneNumberRegisterFieldError == true
                            ? Colors.red
                            : TColor.secondaryText,
                      ),
                    ),
                  ),
                  initialCountryCode: 'KE',
                  onChanged: (phone) {
                    if (phone.completeNumber.length == 13) {
                      print(phone.completeNumber);
                      String phoneNumberInput = phone.completeNumber;
                      String formattedPhoneNumber =
                          phoneNumberInput.substring(1);
                      phoneNumberUser = "+$formattedPhoneNumber";
                      print(phoneNumberUser);
                    }
                  },
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const Row(
                  children: [
                    Text(
                      "Gender",
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
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButtonProfile(
                      buttonText: 'Male',
                      onPressed: () {
                        setState(() {
                          isWorkerActive = true;
                          isEmployerActive = false;
                        });
                      },
                      isActive: isWorkerActive,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    CustomButtonProfile(
                      buttonText: 'Female',
                      onPressed: () {
                        setState(() {
                          isEmployerActive = true;
                          isWorkerActive = false;
                        });
                      },
                      isActive: isEmployerActive,
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.07,
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
                          builder: (context) => const CreateProfile2(),
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

class CustomButtonProfile extends StatefulWidget {
  final String buttonText;

  final Color buttonTextColor;
  final double buttonFontSize;
  final VoidCallback onPressed;
  final bool isActive;

  const CustomButtonProfile({
    required this.buttonText,
    this.buttonTextColor = Colors.black,
    this.buttonFontSize = 14,
    required this.onPressed,
    required this.isActive,
    final Key? key,
  }) : super(key: key);

  @override
  _CustomButtonProfileState createState() => _CustomButtonProfileState();
}

class _CustomButtonProfileState extends State<CustomButtonProfile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: ShapeDecoration(
          color: widget.isActive
              ? const Color.fromARGB(0, 100, 134, 184)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: widget.isActive ? TColor.placeholder : Colors.transparent,
              width: 2,
            ),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 6,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.isActive ? TColor.placeholder : Colors.black,
              fontSize: widget.buttonFontSize,
              fontWeight: FontWeight.w400,
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
      height: 20,
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
    final Offset endPoint1 = Offset(halfWidth, size.height / 2);

    final Offset startPoint2 = Offset(halfWidth, size.height / 2);
    final Offset endPoint2 = Offset(size.width, size.height / 2);

    canvas.drawLine(startPoint1, endPoint1, paint1);
    canvas.drawLine(startPoint2, endPoint2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
