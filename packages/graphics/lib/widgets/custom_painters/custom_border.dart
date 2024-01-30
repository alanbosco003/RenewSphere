import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class CustomBorderedWidget extends StatelessWidget {
  const CustomBorderedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiSizeUtils.getHeightSize(24),
      width: double.infinity,
      child: CustomPaint(
        painter: BorderPainter(),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = GraphicsColorConsts.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width, 25)
      ..quadraticBezierTo(size.width, 0, size.width - 25, 0)
      ..lineTo(25, 0)
      ..quadraticBezierTo(0, 0, 0, 25)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);

    final borderPaint = Paint()
      ..color = GraphicsColorConsts.borderBlue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final borderPath = Path()
      ..moveTo(size.width, 25)
      ..quadraticBezierTo(size.width, 0, size.width - 25, 0)
      ..lineTo(25, 0)
      ..quadraticBezierTo(0, 0, 0, 25);

    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
