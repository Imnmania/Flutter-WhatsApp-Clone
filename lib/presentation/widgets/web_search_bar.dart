import 'package:flutter/material.dart';

import '../../util/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: webAppBarColor,
                  filled: true,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Icon(
                      Icons.search_rounded,
                      size: 18,
                    ),
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  hintText: 'Search or start new chat'),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              child: const Icon(
                Icons.mark_unread_chat_alt,
                color: Colors.white60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
