import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/presentation/widgets/my_message_card.dart';
import 'package:whatsapp_clone/presentation/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          // {"isMe": false, "text": "Hey What is up with you!!", "time": "10:00 am"},

          final item = messages[index];

          if (item['isMe'] == true) {
            // my message -> card
            return MyMessageCard(
              message: item['text']?.toString() ?? 'N/A',
              date: item['time']?.toString() ?? 'N/A',
            );
          }
          // sender message -> card
          return SenderMessageCard(
            message: item['text']?.toString() ?? 'N/A',
            date: item['time']?.toString() ?? 'N/A',
          );
        },
      ),
    );
  }
}
