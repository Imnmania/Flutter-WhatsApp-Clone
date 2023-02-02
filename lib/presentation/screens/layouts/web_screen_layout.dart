import 'package:flutter/material.dart';

import '../../widgets/chat_app_bar.dart';
import '../../widgets/contact_list.dart';
import '../../widgets/inactive_web_state_widget.dart';
import '../../widgets/web_profile_bar.dart';
import '../../widgets/web_search_bar.dart';

/* class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Column(
                children: const [
                  // web profile bar
                  WebProfileBar(),
                  // web search bar
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          // web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            // alignment: Alignment.center,
            child: const InactiveWebStateWidget(),
          ),
        ],
      ),
    );
  }
} */

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  bool _hasClickedOnChat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Column(
                children: [
                  // web profile bar
                  const WebProfileBar(),
                  // web search bar
                  const WebSearchBar(),
                  ContactList(
                    onTap: () {
                      setState(() {
                        _hasClickedOnChat = !_hasClickedOnChat;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
              border: Border(
                left: BorderSide(color: Colors.blueGrey.shade800),
              ),
            ),
            // alignment: Alignment.center,
            child: !_hasClickedOnChat
                ? const InactiveWebStateWidget()
                : Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      // chat app bar
                      ChatAppBar(),
                      // chat list
                      // message input
                      Expanded(
                        child: Center(
                          child: Text('No Chat History!'),
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
