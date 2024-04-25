import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Your Notifications",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          CupertinoButton(
            onPressed: () {},
            child: Image.asset(
              'assets/img/more.png',
              height: 70,
              width: 70,
            ),
          ),
        ],
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
                Text(
                  "Today",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/job.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "You have a new bid for the job you posted",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/job.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "James marked your job as complete",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/job.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "You have a new bid for the job you posted",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/sms.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "James send you a message",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  "This week",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/shield_1.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "Your subscription recharge is due in 1 week",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/job.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "Naomi marked your job as complete",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/job.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "James received your services",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  "Earlier",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/shield_1.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "A job you awarded out for was canceled",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/sms.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "Chris send you a message",
                                          style: TextStyle(
                                            color: TColor.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          "2 min ago",
                                          style: TextStyle(
                                            color: TColor.gray,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
