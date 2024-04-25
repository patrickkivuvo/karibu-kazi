import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profession/profession.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
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
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/img/profile.png',
                      height: 70,
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create 2 social media posters for me",
                          style: TextStyle(
                              color: TColor.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Peter Njenga. Posted just now",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kilimani, Nairobi",
                        style: TextStyle(
                            color: TColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      Text(
                        "Ksh 3,500",
                        style: TextStyle(
                            color: TColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfessionScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                Text(
                                  "View Job",
                                  style: TextStyle(
                                      color: TColor.placeholder,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 18,
                                  color: TColor.placeholder,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
