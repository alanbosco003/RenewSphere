import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class LkBrandLogo extends StatelessWidget {
  const LkBrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: UiSizeUtils.getWidthSize(115.0),
        height: UiSizeUtils.getHeightSize(11.5),
        child: const SvgAsset(
          asset: AssetConsts.brandLogo,
          package: AssetConsts.package,
        ),
      ),
    );
  }
}
