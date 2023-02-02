import 'package:flutter/material.dart';

import '../../util/colors.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: webAppBarColor,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
            radius: 30,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Mr. Amit Dhongi',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Last seen on 5:00 PM',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              debugPrint('search tapped');
            },
            borderRadius: BorderRadius.circular(50),
            child: const Icon(
              Icons.search_rounded,
              color: Colors.white60,
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {
              debugPrint('more tapped');
            },
            borderRadius: BorderRadius.circular(50),
            child: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
