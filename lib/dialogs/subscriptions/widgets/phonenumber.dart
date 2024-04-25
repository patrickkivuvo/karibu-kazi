import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  bool phoneNumberRegisterFieldError = false;
  String phoneNumberUser = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Text(
            'Enter Mpesa Number',
            style: TextStyle(
              color: TColor.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
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
                String formattedPhoneNumber = phoneNumberInput.substring(1);
                phoneNumberUser = "+$formattedPhoneNumber";
                print(phoneNumberUser);
              }
            },
          ),
        ],
      ),
    );
  }
}
