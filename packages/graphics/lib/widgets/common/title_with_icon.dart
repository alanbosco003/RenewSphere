import 'package:flutter/widgets.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class TitleWithIcon extends StatelessWidget {
  final String imagePath;
  final Color color;
  final Color borderColor;
  final String? title;

  const TitleWithIcon(
      {super.key,
      required this.imagePath,
      this.color =
          GraphicsColorConsts.lightBlue, // Default color if not provided
      this.borderColor = GraphicsColorConsts.blueBorder,
      this.title // Default border color if not provided
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: UiSizeUtils.getHeightSize(26),
          width: UiSizeUtils.getHeightSize(26),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              imagePath.isEmpty ? AssetConsts.personalDetailsImage : imagePath,
              package: AssetConsts.package,
              height: 18,
              width: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            title ?? "Personal Details",
            style: GraphicsTextStylesConst.textStyleLightGreyForText_15_600,
          ),
        )
      ],
    );
  }
}
