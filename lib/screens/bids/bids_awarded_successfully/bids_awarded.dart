import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/chats/message_screen.dart';
import 'package:karibu_kazi/screens/revievs/worker_revievs/worker_revievs.dart';

class BidAwarded extends StatefulWidget {
  const BidAwarded({super.key});

  @override
  State<BidAwarded> createState() => _BidAwardedState();
}

class _BidAwardedState extends State<BidAwarded> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
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
                    height: media.width * 0.25,
                  ),
                  Image.asset(
                    'assets/img/profile.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Text(
                    "Bid Awarded Successfully",
                    style: TextStyle(
                      fontSize: 18,
                      color: TColor.placeholder,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            
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
                                  "Plumber Kilimani, Nairobi",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: TColor.secondaryText,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 140,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: TColor.secondaryText,
                              width: 1,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MessagesScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/img/sms.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Go to Chat',
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: const Color.fromARGB(255, 199, 202, 216),
                          width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: TColor.secondaryText,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "12 Orders Complete",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: TColor.secondaryText,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WorkerRevievs(),
                              ),
                            );
                          },
                          child: Text(
                            "See reviews",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: TColor.placeholder,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: const Color.fromARGB(255, 199, 202, 216),
                          width: 1),
                    ),
                    child: Text(
                      "I will very glad to assist with your project with the experience I have in plumbing.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: TColor.secondaryText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          width: double.infinity,
              height: 50,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: TColor.secondaryText,
                  width: 1,
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Manage Ongoing Orders',
                  style: TextStyle(
                    color: TColor.placeholder,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
