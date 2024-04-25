import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/orders/widgets/canceled.dart';
import 'package:karibu_kazi/screens/orders/widgets/completed.dart';
import 'package:karibu_kazi/screens/orders/widgets/ongoing.dart';
import 'package:karibu_kazi/screens/orders/widgets/openbids.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  String activeButton = "Open Bids(5)";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    Widget buildOrdersWidget() {
      if (activeButton == "Open Bids(5)") {
        return const Column(
          children: [
            OpenBids(),
            SizedBox(
              height: 6,
            ),
            OpenBids(),
          ],
        );
      } else if (activeButton == "Ongoing") {
        return const Column(
          children: [
            OnGoing(),
            SizedBox(
              height: 6,
            ),
            OnGoing(),
          ],
        );
      }else if (activeButton == "Completed") {
        return const Column(
          children: [
            Completed(),
            SizedBox(
              height: 6,
            ),
            Completed(),
            SizedBox(
              height: 6,
            ),
            Completed(),
            SizedBox(
              height: 6,
            ),
          ],
        );
      } else {
        // Handle other cases if needed
        return const Column(
          children: [
            Canceled(),
            SizedBox(
              height: 6,
            ),
            Canceled(),
            SizedBox(
              height: 6,
            ),
            Canceled(),
            SizedBox(
              height: 6,
            ),
          ],
        ); 
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: media.width * 0.07,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Bookings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
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
                        hintText: 'Search e.g Electrician',
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
                      ),
                    ),
                  ),
                ],
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
                        activeButton = "Open Bids(5)";
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "Open Bids(5)"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        "Open Bids(5)",
                        style: TextStyle(
                          color: activeButton == "Open Bids(5)"
                              ? TColor.placeholder
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        activeButton = "Ongoing";
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "Ongoing"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        "Ongoing",
                        style: TextStyle(
                          color: activeButton == "Ongoing"
                              ? TColor.placeholder
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        activeButton = "Completed";
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "Completed"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                          color: activeButton == "Completed"
                              ? TColor.placeholder
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        activeButton = "Canceled";
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButton == "Canceled"
                                ? TColor.placeholder
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                          color: activeButton == "Canceled"
                              ? TColor.placeholder
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
