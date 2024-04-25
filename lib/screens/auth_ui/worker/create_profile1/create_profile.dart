import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/common_widgets/custom_button.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/dialogs/add_job.dart';
import 'package:karibu_kazi/dialogs/edit_job.dart';
import 'package:karibu_kazi/screens/auth_ui/worker/profile%20/profile.dart';

class CreateProfile2 extends StatefulWidget {
  const CreateProfile2({super.key});

  @override
  State<CreateProfile2> createState() => _CreateProfile2State();
}

class _CreateProfile2State extends State<CreateProfile2> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: const Text(
          "Help Others Know You",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.01,
                ),
                const FullColoredLine(),
                SizedBox(
                  height: media.width * 0.01,
                ),
                const Text(
                  "Add upto 3 jobs you can do",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromARGB(255, 199, 202, 216),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: Text(
                                              "Plumbing",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showGeneralDialog(
                                            barrierLabel: 'Dialog',
                                            barrierDismissible: true,
                                            context: context,
                                            pageBuilder: (ctx, anim1, anim2) =>
                                                const EditJobDialog(),
                                            transitionBuilder:
                                                (ctx, anim1, anim2, child) =>
                                                    ScaleTransition(
                                              scale: anim1,
                                              child: child,
                                            ),
                                          );
                                        },
                                        child: Center(
                                          child: Image.asset(
                                            'assets/img/filter.png',
                                            width: 30,
                                            height: 30,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 1,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Install pipes",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Container(
                                        width: 120,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 1,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Unblock pipes",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.022,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 1,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Install pipes",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Container(
                                        width: 120,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 199, 202, 216),
                                            width: 1,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Repair leaks",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: 130,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: TColor.placeholder,
                      width: 1,
                    ),
                  ),
                  child: CupertinoButton(
                    onPressed: () {
                      showGeneralDialog(
                        barrierLabel: 'Dialog',
                        barrierDismissible: true,
                        context: context,
                        pageBuilder: (ctx, anim1, anim2) =>
                            const AddJobDialog(),
                        transitionBuilder: (ctx, anim1, anim2, child) =>
                            ScaleTransition(
                          scale: anim1,
                          child: child,
                        ),
                      );
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add,
                            color: TColor.placeholder,
                            size: 25,
                          ),
                          Text(
                            "Add job",
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: media.height * 0.13,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.width * 0.02,
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
                          builder: (context) => const ProfileWorker(),
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

class FullColoredLine extends StatelessWidget {
  const FullColoredLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: FullColoredLinePainter(),
      ),
    );
  }
}

class FullColoredLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = TColor.placeholder
      ..strokeWidth = 4;

    final Offset startPoint = Offset(0, size.height / 2);
    final Offset endPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
