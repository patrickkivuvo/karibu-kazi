import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/chats/message_screen.dart';

class WorkerRevievs extends StatefulWidget {
  const WorkerRevievs({super.key});

  @override
  State<WorkerRevievs> createState() => _WorkerRevievsState();
}

class _WorkerRevievsState extends State<WorkerRevievs> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Worker Revievs",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: media.width * 0.07,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/img/profile.png',
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Peter Njenga",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: TColor.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Employer Hired as Plumber",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: TColor.secondaryText,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "13 Feb 2024",
                              style: TextStyle(
                                fontSize: 14,
                                color: TColor.secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rated worker as:",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: TColor.black,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: TColor.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      Text(
                        "I will be very glad to assist with your project with the experience I have in plumbig.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: TColor.secondaryText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   Column(
                    children: [
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/img/profile.png',
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Peter Njenga",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: TColor.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Employer Hired as Plumber",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: TColor.secondaryText,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "13 Feb 2024",
                              style: TextStyle(
                                fontSize: 14,
                                color: TColor.secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rated worker as:",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: TColor.black,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: TColor.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      Text(
                        "I will be very glad to assist with your project with the experience I have in plumbig.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: TColor.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
