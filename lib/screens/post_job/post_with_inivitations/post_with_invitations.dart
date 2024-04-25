import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/bottom_navigation_bar/bottom_navigation_bar.dart';

class PostWithInvitation extends StatefulWidget {
  const PostWithInvitation({super.key});

  @override
  State<PostWithInvitation> createState() => _PostWithInvitationState();
}

class _PostWithInvitationState extends State<PostWithInvitation> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: media.width * 0.25,
                  ),
                  Image.asset(
                    'assets/img/send.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: media.width * 0.1,
                  ),
                  Text(
                    "Posted with Invitations",
                    style: TextStyle(
                      fontSize: 18,
                      color: TColor.placeholder,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.04,
                  ),
                  Text(
                    "Your job post was submitted to all workers for bodding.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: TColor.secondaryText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Pro workers have seen the invitation",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: TColor.secondaryText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
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
                    text: 'Manage Open Bids',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CustomBottomNavigationBar(),
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
