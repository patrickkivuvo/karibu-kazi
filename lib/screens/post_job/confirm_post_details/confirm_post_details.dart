import 'package:flutter/material.dart';

import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/edit_job_details.dart';
import 'package:karibu_kazi/dialogs/edit_job_details2.dart';
import 'package:karibu_kazi/screens/post_job/let_top_workers/let_top_workers.dart';

class ConfirmPostDetails extends StatefulWidget {
  const ConfirmPostDetails({super.key});

  @override
  State<ConfirmPostDetails> createState() => _ConfirmPostDetailsState();
}

class _ConfirmPostDetailsState extends State<ConfirmPostDetails> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Confirm Post Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 235, 235, 238),
                  ),
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Looking for: Plumber",
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Image.asset(
                          'assets/img/verified.png',
                          width: 30,
                          height: 30,
                        ),
                              const SizedBox(width: 4),
                              Text(
                                "Ready to post",
                                style: TextStyle(
                                  color: TColor.placeholder,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Job Description",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showGeneralDialog(
                        barrierLabel: 'Dialog',
                        barrierDismissible: true,
                        context: context,
                        pageBuilder: (ctx, anim1, anim2) =>
                            const EditJobDetailsDialog(),
                        transitionBuilder: (ctx, anim1, anim2, child) =>
                            ScaleTransition(
                          scale: anim1,
                          child: child,
                        ),
                      );
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Text(
                  "We are seeking a skilled and detail-oriented CCTV Installation Technician to join our team. In this role you will be for the installation, configuration and maintenance of CCTV cameras and related survaillance equipment. The ideal candidate should have a strong technical background, excellent problem-solving skills and the ability to work independently.",
                  style: TextStyle(
                    color: TColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Additional Details",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showGeneralDialog(
                        barrierLabel: 'Dialog',
                        barrierDismissible: true,
                        context: context,
                        pageBuilder: (ctx, anim1, anim2) =>
                            const EditJobDetailsDialog2(),
                        transitionBuilder: (ctx, anim1, anim2, child) =>
                            ScaleTransition(
                          scale: anim1,
                          child: child,
                        ),
                      );
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  children: [
                    Image.asset(
                          'assets/img/location.png',
                          width: 30,
                          height: 30,
                        ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Text(
                      "Kileleshwa, Nairobi",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: media.width * 0.08,
                    ),
                    Text(
                      "Ririta Estate, Drive 3, Hs no 33, 2nd floor",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  children: [
                    Image.asset(
                          'assets/img/calendar.png',
                          width: 30,
                          height: 30,
                        ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Text(
                      "Work Starts: 5 Feb 2024",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  children: [
                    Image.asset(
                          'assets/img/money.png',
                          width: 30,
                          height: 30,
                        ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Text(
                      "Estimated Budget: Ksh 3,500",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Contact Details",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     "Edit",
                    //     style: TextStyle(
                    //       color: TColor.placeholder,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                                SizedBox(
                  height: media.width * 0.03,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: TColor.placeholder,
                      size: 20,
                    ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Text(
                      "+254748482435",
                      style: TextStyle(
                        color: TColor.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.2,
                ),
                SizedBox(
                  height: 48,
                  child: CustomButton(
                    color: TColor.placeholder,
                    textColor: TColor.white,
                    text: 'Proceed',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LetTopWorkers(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
