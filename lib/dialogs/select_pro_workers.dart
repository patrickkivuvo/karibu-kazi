import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/post_job/post_with_inivitations/post_with_invitations.dart';

class ProWorkersDialog extends StatefulWidget {
  const ProWorkersDialog({Key? key}) : super(key: key);

  @override
  _ProWorkersDialogState createState() => _ProWorkersDialogState();
}

class _ProWorkersDialogState extends State<ProWorkersDialog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          "Select Pro Workers to Invite",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'X',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 490,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/img/profile.png',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 65,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 1,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Peter Njenga",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/img/shield.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        const Text(
                                          "Plumber. Kilimani,\nNairobi",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: TColor.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 2),
                                      ),
                                      child: Center(
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Icon(
                                                Icons.message_outlined,
                                                color: TColor.placeholder,
                                                size: 16,
                                              ),
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: TColor.placeholder,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Invite",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 26,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: TColor.black),
                                  ),
                                ],
                              ),
                              Text(
                                "12 Orders Complete",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: TColor.black),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "See reviews",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: TColor.placeholder),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                      Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/img/profile.png',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 65,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 1,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Peter Njenga",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/img/shield.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        const Text(
                                          "Plumber. Kilimani,\nNairobi",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: TColor.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 2),
                                      ),
                                      child: Center(
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Icon(
                                                Icons.message_outlined,
                                                color: TColor.placeholder,
                                                size: 16,
                                              ),
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: TColor.placeholder,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Invite",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 26,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: TColor.black),
                                  ),
                                ],
                              ),
                              Text(
                                "12 Orders Complete",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: TColor.black),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "See reviews",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: TColor.placeholder),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                      Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/img/profile.png',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 65,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 1,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Peter Njenga",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/img/shield.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 6),
                                        const Text(
                                          "Plumber. Kilimani,\nNairobi",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: TColor.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 2),
                                      ),
                                      child: Center(
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Icon(
                                                Icons.message_outlined,
                                                color: TColor.placeholder,
                                                size: 16,
                                              ),
                                            )),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: TColor.placeholder,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Invite",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 26,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: TColor.black),
                                  ),
                                ],
                              ),
                              Text(
                                "12 Orders Complete",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: TColor.black),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "See reviews",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: TColor.placeholder),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      child: CustomButton(
                        color: TColor.placeholder,
                        textColor: TColor.white,
                        text: 'Finish',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PostWithInvitation(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
