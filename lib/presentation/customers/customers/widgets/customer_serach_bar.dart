import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/text_fields/text_fields.dart';

class CustomersSearchBar extends StatelessWidget {
  const CustomersSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: UiSizeUtils.getHeightSize(16),
          horizontal: UiSizeUtils.getHeightSize(20)),
      child: const CustomTextFormField(
        borderRadius: 10,
        suffixIcon: Icon(
          Icons.search,
          color: GraphicsColorConsts.black,
        ),
      ),
    );
  }
}
