import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/common_widgets/custom_input_field.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/auth_ui/create_profile/create_profile.dart';
import 'package:karibu_kazi/screens/auth_ui/forgort_password_email/forgort_password_email.dart';
import 'package:karibu_kazi/screens/auth_ui/signin_phone/signin_phone.dart';

class SignInEmail extends StatefulWidget {
  const SignInEmail({super.key});

  @override
  State<SignInEmail> createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Sign into Your Account",
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
                const Row(
                  children: [
                    Text(
                      "Email Address",
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
                  label: "Enter Email",
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                const Row(
                  children: [
                    Text(
                      "Password ",
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
                  label: "Password",
                  prefixIcon: Icons.lock_outline,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordEmail(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: TColor.placeholder,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.25,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Sign In',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateProfile(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPhone(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Continue with Phone Number"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/google.png",
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("Continue with Google"),
                      ],
                    ),
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
