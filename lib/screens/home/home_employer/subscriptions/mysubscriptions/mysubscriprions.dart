import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class MySubscriptionsScreen extends StatelessWidget {
  const MySubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Subscription',
                      style: TextStyle(
                          color: TColor.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Image.asset(
                        'assets/img/more.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.12,
                ),
                Center(
                  child: Image.asset(
                    'assets/img/shield.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Your monthly Subscription is active',
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color.fromARGB(255, 199, 202, 216),
                      width: 1,
                    ),
                  ),
               
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Last Recharge',
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Valid Until',
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: media.width * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2 Mar 2024',
                                style: TextStyle(
                                  color: TColor.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '2 Apr 2024',
                                style: TextStyle(
                                  color: TColor.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(15, 187, 189, 223),
                                Color.fromARGB(15, 187, 156, 146),
                              ],
                            ),
                          ),
                          margin: const EdgeInsets.only(bottom: 2.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Stay ahead of time, renew subscription',
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: TColor.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Center(
                                      child: Text(
                                        'Make Payment',
                                        style: TextStyle(
                                          color: TColor.placeholder,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
