import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/images/static_image.dart';

class CustomBasicSplash extends StatelessWidget {
  const CustomBasicSplash({
    super.key,
    this.imagePath,
    required this.title,
    required this.subTitle,
  });
  final String? imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Three widgets to show in the center
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath ?? AssetConsts.bankVerification,
                    package: AssetConsts.package,
                    height: UiSizeUtils.getHeightSize(150),
                    width: UiSizeUtils.getWidthSize(149),
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(6),
                  ),
                  Text(
                    title,
                    style: GraphicsTextStylesConst.textStyleBlack_12_600,
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(12),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: UiSizeUtils.getWidthSize(50)),
                    child: Text(
                      subTitle,
                      style: GraphicsTextStylesConst.textStyleBlack_14_400,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          // Widget stuck to the bottom
          const LkBrandLogo()
        ],
      )),
    );
  }
}
