import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../common/color_extension.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final IconData icon;
  final bool isSelected;
  const TabButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: isSelected ? Tcolor.primary : Tcolor.placeholder,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Tcolor.primary : Tcolor.placeholder,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
