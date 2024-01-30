import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class EditButton extends StatelessWidget {
  const EditButton({required this.callback, super.key});
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(300),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Color.fromARGB(255, 230, 230, 230),
                  blurRadius: 7,
                  blurStyle: BlurStyle.outer,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          const Center(
            child: SvgAsset(
              size: 28,
              asset: AssetConsts.iconBgYellow,
              package: AssetConsts.package,
            ),
          ),
          const SvgAsset(
            size: 18,
            asset: AssetConsts.iconPen,
            package: AssetConsts.package,
          ),
        ],
      ),
    );
  }
}
