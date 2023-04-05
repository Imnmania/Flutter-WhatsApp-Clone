import 'package:flutter/material.dart';

import '../../util/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: tabColor,
      padding: const EdgeInsets.all(20),
      onPressed: onTap,
      child: Text(title),
    );
  }
}
