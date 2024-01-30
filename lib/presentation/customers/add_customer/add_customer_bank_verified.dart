import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/widgets/splash_screen/basic_splash_screen.dart';

class BankVerified extends StatelessWidget {
  const BankVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBasicSplash(
      imagePath: AssetConsts.bankVerified,
      title: GraphicsStringConsts.bankVerifiedTitle,
      subTitle: GraphicsStringConsts.bankVerifiedSubTtile,
    );
  }
}
