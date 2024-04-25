import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profession/profession.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/seeall_professionals/seeall.dart';

import '../notifications/notifications.dart';

class HomeEmployer extends StatefulWidget {
  const HomeEmployer({super.key});

  @override
  State<HomeEmployer> createState() => _HomeEmployerState();
}

class _HomeEmployerState extends State<HomeEmployer> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

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
                                          "Emloyer",
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
                              'assets/img/send.png',
                              height: 20,
                              width: 20,
                            ),
                            onPressed: () {},
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find a Professional",
                        style: TextStyle(
                          color: TColor.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeSeeAll(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              "See All",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: TColor.placeholder,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfessionScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/img/kazihome1.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  "Electician",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: TColor.placeholder,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfessionScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/img/kazihome2.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  "General CL..",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: TColor.placeholder,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfessionScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/img/kazihome3.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  "Gardener",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: TColor.placeholder,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfessionScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/img/kazihome.jpeg',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  "Mechanic",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: TColor.placeholder,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfessionScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/img/kazihome4.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  "Dog Trainer",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: TColor.placeholder,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfessionScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              'assets/img/kazihome5.jpeg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Text(
                                  "Plumber",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: TColor.placeholder,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
