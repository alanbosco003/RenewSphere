import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';

class DatePickerUtils {
  static Future<DateTime?> selectDate(
    BuildContext context,
    DateTime initialDate,
  ) async {
    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: GraphicsColorConsts
                .oranch, // Change the primary color as needed
            // accentColor: Colors.red, // Change the accent color as needed
            colorScheme: const ColorScheme.light(
              primary: GraphicsColorConsts.oranch,
            ), // Change color scheme as needed
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
  }
}
