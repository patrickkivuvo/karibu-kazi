import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/auth_ui/opt_phone/opt_phone.dart';

class ForgotPasswordPhone extends StatefulWidget {
  const ForgotPasswordPhone({super.key});

  @override
  State<ForgotPasswordPhone> createState() => _ForgotPasswordPhoneState();
}

class _ForgotPasswordPhoneState extends State<ForgotPasswordPhone> {
  bool phoneNumberRegisterFieldError = false;
  String phoneNumberUser = "";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Recover Password",
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
                  height: media.width * 0.07,
                ),
                const Text(
                  "A verification code will be send to your phone number. Please confirm your number and request code.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: media.height * 0.13,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.02,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Complete Verification',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OPTPhone(),
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
