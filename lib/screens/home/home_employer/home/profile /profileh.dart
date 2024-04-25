import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class ProfileScreenH extends StatefulWidget {
  const ProfileScreenH({super.key});

  @override
  State<ProfileScreenH> createState() => _ProfileScreenHState();
}

class _ProfileScreenHState extends State<ProfileScreenH> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: media.width * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: const Color.fromARGB(255, 199, 202, 216),
                            width: 2),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/profile.png',
                              height: 70,
                              width: 70,
                            ),
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                height: 70,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: Text(
                                              "Peter Njenga",
                                              style: TextStyle(
                                                color: TColor.placeholder,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: const Text(
                                                "Employer. Nairobi, Runda"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: TColor.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    const Text(
                      "My Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: media.width * 0.03,
              ),
              Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/buser.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Personal Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/p_money.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Payment Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/feedback.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "My Reviews",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/lock.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Change Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                        "More",
                        style: TextStyle(
                          color: Colors.black,
                           fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
              ),
                      Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/star.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Rate App",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/share.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Share App",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/pay.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Terms of Use & FAGs",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/img/logout.png',
                      height: 30,
                      width: 30,
                      color: TColor.placeholder,
                    ),
                    title: const Text(
                      "Log Out",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}
