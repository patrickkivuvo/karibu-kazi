
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karibu_kazi/common_widgets/back_icon.dart';
import 'package:karibu_kazi/dialogs/chats_more.dart';

import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackIcon(),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/img/profile.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 2,
            ),
            const Text(
              "Peter Njenga",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Image.asset(
              'assets/img/shield.png',
              width: 12,
              height: 12,
            ),
          ],
        ),
        actions: [
          CupertinoButton(
            onPressed: () {
              showGeneralDialog(
                barrierLabel: 'Dialog',
                barrierDismissible: true,
                context: context,
                pageBuilder: (ctx, anim1, anim2) => const ChatsMoreDialog(),
                transitionBuilder: (ctx, anim1, anim2, child) =>
                    ScaleTransition(
                  scale: anim1,
                  child: child,
                ),
              );
            },
            child: Image.asset(
              'assets/img/more.png',
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(
            width: 6,
          )
        ],
      ),
      body: const Body(),
    );
  }


  }

