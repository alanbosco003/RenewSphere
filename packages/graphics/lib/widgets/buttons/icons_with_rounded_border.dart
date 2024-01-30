import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class IconsWithRoundedBorder extends StatelessWidget {
  const IconsWithRoundedBorder({required this.iconPath, super.key});
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: UiSizeUtils.getWidthSize(16)),
      child: Container(
        height: UiSizeUtils.getHeightSize(30),
        width: UiSizeUtils.getHeightSize(30),
        decoration: BoxDecoration(
          border:
              Border.all(color: GraphicsColorConsts.lightGreyIconBorderColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Center(
          child: SvgAsset(
            size: 15,
            asset: iconPath,
            package: AssetConsts.package,
          ),
        ),
      ),
    );
  }
}
