import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/filiters.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profession/profession.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/seeall_professionals/seeall.dart';
import 'package:karibu_kazi/screens/home/home_employer/notifications/notifications.dart';
import 'package:karibu_kazi/screens/home/home_worker/widgets/explore_jobs.dart';
import 'package:karibu_kazi/screens/home/home_worker/widgets/foryou.dart';
import 'package:karibu_kazi/screens/home/home_worker/widgets/myinvites.dart';

class HomeWorker extends StatefulWidget {
  const HomeWorker({super.key});

  @override
  State<HomeWorker> createState() => _HomeWorkerState();
}

class _HomeWorkerState extends State<HomeWorker> {
  String activeButton = "For You";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    Widget buildOrdersWidget() {
      if (activeButton == "For You") {
        return const Column(
          children: [
            ForYou(),
            SizedBox(
              height: 6,
            ),
            ForYou(),
          ],
        );
      } else if (activeButton == "Explore Jobs") {
        return const Column(
          children: [
            ExploreJobs(),
            SizedBox(
              height: 6,
            ),
            ExploreJobs(),
          ],
        );
      } else {
        // Handle other cases if needed
        return  MyInvites();
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: media.width * 0.60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Color.fromARGB(255, 245, 244, 244),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 2.0),
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
                                  child: Image.asset(
                                    'assets/img/profile.png',
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: SizedBox(
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Hi, Peter Njenga",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          "Plumber",
                                          style: TextStyle(
                                            color: TColor.secondaryText,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              CupertinoButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NotificationsScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: TColor.white,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.notifications_outlined,
                                    size: 25,
                                    color: TColor.black,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextField(
                        onChanged: (value) {},
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Need Someone to...',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.search,
                            color: TColor.black,
                            size: 20,
                          ),
                          suffixIcon: IconButton(
                            icon: Image.asset(
                              'assets/img/filter.png',
                              height: 25,
                              width: 25,
                              color: TColor.placeholder,
                            ),
                            onPressed: () {
                              showGeneralDialog(
                                    barrierLabel: 'Dialog',
                                    barrierDismissible: true,
                                    context: context,
                                    pageBuilder: (ctx, anim1, anim2) =>
                                        const  FlitersDialog(),
                                    transitionBuilder: (ctx, anim1, anim2, child) =>
                                        ScaleTransition(
                                      scale: anim1,
                                      child: child,
                                    ),
                                  );
                            },
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        activeButton = "For You";
                      });
                    },
                    child: Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "For You"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "For You",
                          style: TextStyle(
                            color: activeButton == "For You"
                                ? TColor.placeholder
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        activeButton = "Explore Jobs";
                      });
                    },
                    child: Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "Explore Jobs"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Explore Jobs",
                          style: TextStyle(
                            color: activeButton == "Explore Jobs"
                                ? TColor.placeholder
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        activeButton = "My Invites";
                      });
                    },
                    child: Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "My Invites"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "My Invites",
                              style: TextStyle(
                                color: activeButton == "My Invites"
                                    ? TColor.placeholder
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/img/one_pro.png',
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      showGeneralDialog(
                                    barrierLabel: 'Dialog',
                                    barrierDismissible: true,
                                    context: context,
                                    pageBuilder: (ctx, anim1, anim2) =>
                                        const  FlitersDialog(),
                                    transitionBuilder: (ctx, anim1, anim2, child) =>
                                        ScaleTransition(
                                      scale: anim1,
                                      child: child,
                                    ),
                                  );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/filter.png',
                          height: 25,
                          width: 25,
                          color: TColor.placeholder,
                        ),
                        Text(
                          "Filter",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            buildOrdersWidget(),
          ],
        ),
      ),
    );
  }
}
