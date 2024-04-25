import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class ProfessionScreen extends StatefulWidget {
  const ProfessionScreen({super.key});

  @override
  State<ProfessionScreen> createState() => _ProfessionScreenState();
}

class _ProfessionScreenState extends State<ProfessionScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Graphics Designer",
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
                Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromARGB(255, 199, 202, 216),
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    height: 85,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hire a Graphics Designer among these",
                            style: TextStyle(
                              color: TColor.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img/b_user.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 1),
                                  Text(
                                    "36",
                                    style: TextStyle(
                                      color: TColor.placeholder,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    "Basic Users",
                                    style: TextStyle(
                                      color: TColor.placeholder,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img/p_user.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  const SizedBox(width: 1),
                                  Text(
                                    "16",
                                    style: TextStyle(
                                      color: TColor.placeholder,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    "Pro Users",
                                    style: TextStyle(
                                      color: TColor.placeholder,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: TColor.placeholder,
                        width: 1,
                      ),
                    ),
                    height: 44,
                    child: Center(
                      child: Text(
                        "Post a Job",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Text(
                  "Professional Skills",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: TColor.secondaryText,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Modify photos on Adobe Photoshop",
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: TColor.secondaryText,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Create posters and fryers for events and social media",
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: TColor.secondaryText,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Design Illustrations",
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: TColor.secondaryText,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Design Billboards",
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: TColor.secondaryText,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Design booklets for printing",
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
