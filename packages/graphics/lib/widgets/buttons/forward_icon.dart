import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class ForwardIcon extends StatelessWidget {
  const ForwardIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: UiSizeUtils.getWidthSize(16),
          right: UiSizeUtils.getWidthSize(10)),
      child: const SvgAsset(
        asset: AssetConsts.iconForward,
        package: AssetConsts.package,
      ),
    );
  }
}
