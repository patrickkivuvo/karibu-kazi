import 'package:flutter/material.dart';
import 'package:karibu_kazi/dialogs/raise_concern.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profession/profession.dart';

class ChatsMoreDialog extends StatelessWidget {
  const ChatsMoreDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfessionScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/img/bjobs.png',
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.012,
                    ),
                    const Flexible(
                      child: Text(
                        "View Job Details",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showGeneralDialog(
                    barrierLabel: 'Dialog',
                    barrierDismissible: true,
                    context: context,
                    pageBuilder: (ctx, anim1, anim2) =>
                        const RaiseConcernDialog(),
                    transitionBuilder: (ctx, anim1, anim2, child) =>
                        ScaleTransition(
                      scale: anim1,
                      child: child,
                    ),
                  );
                },
                child: Row(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/img/abuse.png',
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.012,
                    ),
                    const Flexible(
                      child: Text(
                        "Raise Concern",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
