import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/card_buttom.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class HomeSeeAll extends StatefulWidget {
  const HomeSeeAll({super.key});

  @override
  State<HomeSeeAll> createState() => _HomeSeeAllState();
}

class _HomeSeeAllState extends State<HomeSeeAll> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        title: const Text(
          "Find a Professional you Need",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
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
                          hintText: 'Search e.g Electician',
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
            ),
            SizedBox(
              height: media.width * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardButton(
                        buttonText: 'Mechanic',
                      ),
                      CardButton(
                        buttonText: 'Graphics Designer',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardButton(
                        buttonText: 'Plumber',
                      ),
                      CardButton(
                        buttonText: 'Electician ',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardButton(
                        buttonText: 'Pet Manager',
                      ),
                      CardButton(
                        buttonText: 'General Cleaner',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardButton(
                        buttonText: 'Photographer',
                      ),
                      CardButton(
                        buttonText: 'Electician ',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
