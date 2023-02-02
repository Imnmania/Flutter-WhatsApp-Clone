import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InactiveWebStateWidget extends StatelessWidget {
  const InactiveWebStateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
