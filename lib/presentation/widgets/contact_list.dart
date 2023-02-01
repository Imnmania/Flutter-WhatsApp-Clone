import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/util/colors.dart';

import '../../info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          final item = info[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  log('Tapped ${item['name']}');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(item['profilePic']?.toString() ?? 'N/A'),
                    ),
                    title: Text(item['name']?.toString() ?? 'N/A'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(item['message']?.toString() ?? 'N/A'),
                    ),
                    trailing: Text(
                      item['time']?.toString() ?? 'N/A',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                indent: 95,
                color: dividerColor,
              ),
            ],
          );
        },
      ),
    );
  }
}
