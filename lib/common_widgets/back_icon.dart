import 'package:flutter/cupertino.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        'assets/img/back.png',
        height: 45,
        width: 45,
      ),
    );
  }
}
