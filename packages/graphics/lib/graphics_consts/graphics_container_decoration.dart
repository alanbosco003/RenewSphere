import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';

class GrpahicsDecoration {
  static BoxDecoration customerTileDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: GraphicsColorConsts.lightGreyBorderColor,
        width: 2.0,
      ),
    ),
  );
}
