import 'package:flutter/material.dart';
import '../../widgets/chat_list.dart';
import '../../../util/colors.dart';

import '../../../info.dart';
import '../../widgets/mobile_chat_input_widget.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Column(
        children: const [
          // chat list
          ChatList(),

          // text input
          MobileChatInputWidget(),
        ],
      ),
    );
  }
}
