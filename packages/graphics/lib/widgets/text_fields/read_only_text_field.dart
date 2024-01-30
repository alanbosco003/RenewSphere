import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class ReadOnlyTextField extends StatelessWidget {
  final String text;
  final String hintText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;

  const ReadOnlyTextField({
    required this.text,
    required this.hintText,
    this.onTap,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GraphicsTextStylesConst.textStyleGrey_12_600,
          ),
          const SizedBox(height: 8),
          Container(
            height: UiSizeUtils.getHeightSize(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: GraphicsColorConsts.lightGrey,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    hintText,
                    style: GraphicsTextStylesConst.textStyleBlack_12_400,
                  ),
                ),
                if (suffixIcon != null) suffixIcon!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
