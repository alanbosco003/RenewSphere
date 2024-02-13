import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/consts.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final bool isActive;
  final Color? iconColor; // Optional icon color
  final bool? isSpace;

  const CustomIconButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed,
      required this.isActive,
      this.iconColor, // Optional icon color
      this.isSpace})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor ??
                (isActive ? GraphicsColorConsts.green : Colors.black),
          ),
          SizedBox(width: isSpace ?? false ? 0 : 5),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
