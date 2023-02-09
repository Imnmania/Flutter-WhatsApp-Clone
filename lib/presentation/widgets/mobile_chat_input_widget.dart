import 'package:flutter/material.dart';

import '../../util/colors.dart';

class MobileChatInputWidget extends StatelessWidget {
  const MobileChatInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: mobileChatBoxColor,
            prefixIcon: const Icon(
              Icons.emoji_emotions,
              color: Colors.white54,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.send,
                    color: Colors.white54,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white54,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.attach_file_rounded,
                    color: Colors.white54,
                  ),
                ],
              ),
            ),
            hintText: 'Type a message...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.all(10)),
      ),
    );
  }
}
