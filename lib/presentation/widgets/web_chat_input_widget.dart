import 'package:flutter/material.dart';

import '../../util/colors.dart';

class WebChatInputWidget extends StatelessWidget {
  const WebChatInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      color: chatTextFieldOuterContainerColor,
      child: Flexible(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.white54,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.attach_file,
                    color: Colors.white54,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey[800],
                  hintText: 'Type a message...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
