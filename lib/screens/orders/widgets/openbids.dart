import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/bids/bids_awarded_successfully/bids_awarded.dart';

class OpenBids extends StatelessWidget {
  const OpenBids({super.key});

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
                          "Kilimani, Nairobi. Posted just now",
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
                        "17 Bids Received",
                        style: TextStyle(
                            color: TColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      Text(
                        "12 Invites Sent",
                        style: TextStyle(
                            color: TColor.placeholder,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BidAwarded(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: TColor.placeholder
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                Text(
                                  "Award Bid",
                                  style: TextStyle(
                                      color: TColor.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: TColor.white,
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
