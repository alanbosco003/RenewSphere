import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({required this.onpressed, super.key});
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Stack(
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: onpressed,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                AssetConsts.iconCustomer,
                package: AssetConsts.package,
              ),
            ),
          ),
          Positioned(
            top: UiSizeUtils.getHeightSize(28),
            bottom: 0,
            left: UiSizeUtils.getHeightSize(28),
            child: Container(
              width: UiSizeUtils.getHeightSize(23),
              height: UiSizeUtils.getHeightSize(23),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add_circle_outline_outlined,
                color: GraphicsColorConsts.oranch,
                // size: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
