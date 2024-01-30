import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgAsset extends StatelessWidget {
  const SvgAsset({
    Key? key,
    this.color,
    required this.asset,
    this.package,
    this.size,
  }) : super(key: key);

  final String asset;
  final Color? color;
  final String? package;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      color: color,
      package: package,
      width: size,
      height: size,
    );
  }
}
