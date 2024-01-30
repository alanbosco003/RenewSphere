import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class NotificationIconButton extends StatelessWidget {
  const NotificationIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgAsset(
            asset: AssetConsts.notificBaseIcon,
            package: AssetConsts.package,
          ),
          SvgAsset(
            asset: AssetConsts.notificBellIcon,
            package: AssetConsts.package,
          ),
        ],
      ),
    );
  }
}
