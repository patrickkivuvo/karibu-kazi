import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/bids/bids_awarded_successfully/bids_awarded.dart';
import 'package:karibu_kazi/screens/chats/message_screen.dart';
import 'package:karibu_kazi/screens/revievs/worker_revievs/worker_revievs.dart';

class ProfileWorkerH extends StatefulWidget {
  const ProfileWorkerH({super.key});

  @override
  State<ProfileWorkerH> createState() => _ProfileWorkerHState();
}

class _ProfileWorkerHState extends State<ProfileWorkerH> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Worker Profile",
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
                    "Peter Njenga",
                    style: TextStyle(
                      fontSize: 18,
                      color: TColor.black,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.02,
                  ),
                  Text(
                    "Plumber Kilimani, Nairobi.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: TColor.secondaryText,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: TColor.placeholder,
                  width: 2,
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
                      'Chat',
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: TColor.placeholder,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BidAwarded(),
                    ),
                  );
                },
                child: Text(
                  'Award Bid',
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
