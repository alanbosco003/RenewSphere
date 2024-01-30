import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class ImagePickingContainer extends StatelessWidget {
  const ImagePickingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: UiSizeUtils.getHeightSize(20)),
      child: Container(
        width: double.infinity,
        height: UiSizeUtils.getHeightSize(240),
        decoration: BoxDecoration(
            border: Border.all(color: GraphicsColorConsts.blueBGborder),
            borderRadius: const BorderRadius.all(Radius.circular(4))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: UiSizeUtils.getHeightSize(20)),
              child: Container(
                height: UiSizeUtils.getHeightSize(24),
                width: UiSizeUtils.getHeightSize(106),
                decoration: BoxDecoration(
                    color: GraphicsColorConsts.lightOrange,
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SvgAsset(
                      size: 18,
                      asset: AssetConsts.iconPen,
                      package: AssetConsts.package,
                    ),
                    Text(
                      "Edit Image",
                      style: GraphicsTextStylesConst.textStyleOranch_12_600,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
