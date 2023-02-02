import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/presentation/widgets/contact_list.dart';

import '../../widgets/web_profile_bar.dart';
import '../../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Column(
                children: [
                  // web profile bar
                  WebProfileBar(),
                  // web search bar
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          // we screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            // alignment: Alignment.center,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'whatsapp.svg',
                    height: 200,
                    width: 400,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'WhatsApp Web',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Send and receive messages without keeping your phone online.',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Use WhatsApp on up to 4 linked devices and 1 phone at the same time.',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
