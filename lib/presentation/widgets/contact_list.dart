import 'dart:developer';

import 'package:flutter/material.dart';

import '../../info.dart';
import '../../util/colors.dart';

class ContactList extends StatelessWidget {
  final VoidCallback onTap;
  const ContactList({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            indent: 88,
            endIndent: 6,
            height: 0,
            color: dividerColor,
          );
        },
        itemCount: info.length,
        itemBuilder: (context, index) {
          final item = info[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  log('Tapped ${item['name']}');
                  onTap();
                },
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
              // const Divider(
              //   indent: 95,
              //   endIndent: 10,
              //   color: dividerColor,
              // ),
            ],
          );
        },
      ),
    );
  }
}
