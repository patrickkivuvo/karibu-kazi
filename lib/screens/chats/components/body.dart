import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/models/ChatMessage.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profession/profession.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15 * 0.75,
            vertical: 15 / 2,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: const Color.fromARGB(255, 199, 202, 216), width: 1),
            ),
            margin: const EdgeInsets.only(bottom: 2.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/img/bjobs.png',
                      width: 55,
                      height: 55,
                      color: TColor.placeholder,
                    ),
                    SizedBox(
                      height: 44,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 1,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Fix my garage charging wiring",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Kilimani, Nairobi. Ksh 2,500 ",
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 44,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/img/pin.png',
                                width: 20,
                                height: 20,
                                color: TColor.placeholder,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfessionScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: TColor.placeholder,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
