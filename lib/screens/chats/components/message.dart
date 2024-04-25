import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/models/ChatMessage.dart';

import 'text_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
  crossAxisAlignment: message.isSender
      ? CrossAxisAlignment.end
      : CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: message.isSender
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          messageContaint(message),
        ],
      ),
    ),
    if (message.isSender)
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "10:55 AM",
              style: TextStyle(
                color: TColor.secondaryText,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            const SizedBox(width: 2),
            Image.asset(
              'assets/img/tick_double.png',
              width: 15,
              height: 15,
            ),
          ],
        ),
      ),
    if (!message.isSender) // Added condition for when message is not sender
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align to start if not sender
          children: [
            Image.asset(
              'assets/img/tick_double.png',
              width: 15,
              height: 15,
            ),
            const SizedBox(width: 2),
            Text(
              "10:55 AM",
              style: TextStyle(
                color: TColor.secondaryText,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
  ],
),

    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return Colors.red;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return Colors.amber;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: const EdgeInsets.only(left: 15 / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
