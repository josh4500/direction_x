import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/message.dart';
import 'custom_text.dart';
import 'suggest_tile.dart';

class MessageBubble extends StatelessWidget {
  final Message message;
  const MessageBubble({Key? key, required this.message}) : super(key: key);

  bool get isMe => message.isMe;
  Alignment get alignment =>
      isMe ? Alignment.centerRight : Alignment.centerLeft;

  String get timeString => DateFormat('hh:mm a').format(message.createdAt);
  Color get bgColor => isMe ? Colors.black : const Color(0xFFE5F9E9);
  Color get textColor => isMe ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                    bottomLeft:
                        isMe ? const Radius.circular(25.0) : Radius.zero,
                    bottomRight:
                        isMe ? Radius.zero : const Radius.circular(25.0),
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomText(
                      text: message.content,
                      textStyle: TextStyle(
                        color: textColor,
                        fontSize: 15.5,
                      ),
                    ),
                    Positioned.fill(
                      bottom: -4,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          timeString,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          if (!isMe && message.intents.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const SuggestTile();
                },
                itemCount: message.intents.length,
              ),
            )
        ],
      ),
    );
  }
}
