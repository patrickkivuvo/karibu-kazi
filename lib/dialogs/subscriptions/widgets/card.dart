import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';

class CardP extends StatelessWidget {
  const CardP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Container(
              margin: const EdgeInsets.only(bottom: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(255, 199, 202, 216),
                  width: 0.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 50.74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 247, 245, 245),
                        ),
                        child: Image.asset(
                          'assets/img/visa.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bank Card ",
                              style: TextStyle(
                                color: TColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "VISA****8888",
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/img/more.png',
                          width: 40,
                          height: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
