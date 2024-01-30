import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';

class CustomBorder extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color borderColor;
  final double borderRadius;

  const CustomBorder({
    super.key,
    required this.child,
    this.color,
    this.borderColor = GraphicsColorConsts.blueBorder,
    this.borderRadius = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
          bottomLeft: Radius.circular(borderRadius),
        ),
      ),
      child: child,
    );
  }
}
