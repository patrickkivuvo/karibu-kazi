import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/models/ChatMessage.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15 * 0.75,
        vertical: 15 / 2,
      ),
      decoration: BoxDecoration(
        color: message!.isSender ? TColor.placeholder : Colors.transparent,
        border: Border.all(
            color: message!.isSender ?  Colors.transparent: TColor.secondaryText, width: 1),
        borderRadius: message!.isSender ? const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ) : const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ), 
      ),
      child: Text(
        message!.text,
        style: TextStyle(
          color: message!.isSender ? Colors.white : TColor.secondaryText,
        ),
      ),
    );
  }
}

//     import 'package:flutter/material.dart';
// import 'package:karibu_kazi/constants/color_extension.dart';
// import 'package:karibu_kazi/models/ChatMessage.dart';

// class TextMessage extends StatelessWidget {
//   const TextMessage({
//     Key? key,
//     this.message,
//     this.isSender = false,
//   }) : super(key: key);

//   final ChatMessage? message;
//   final bool isSender;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 300,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(12),
//           topRight: Radius.circular(12),
//           bottomLeft: isSender ? Radius.circular(12) : Radius.circular(0),
//           bottomRight: isSender ? Radius.circular(0) : Radius.circular(12),
//         ),
//         color: isSender ? TColor.placeholder : Colors.transparent,
//         border: Border.all(
//           color: const Color.fromARGB(255, 199, 202, 216),
//           width: 1,
//         ),
//       ),
//       margin: const EdgeInsets.only(bottom: 2.0),
//     );
//   }
// }
