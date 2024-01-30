import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/widgets/buttons/notification_icon_button.dart';
import 'package:graphics/widgets/custom_painters/custom_border.dart';
import 'package:graphics/widgets/images/svg_images.dart';

class CustomTopAppBar extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final bool showBackButton;
  final VoidCallback? onBackButtonPressed;
  final bool notificationIcon;
  final VoidCallback? onNotificationPressed;

  const CustomTopAppBar({
    required this.title,
    required this.titleStyle,
    required this.showBackButton,
    this.onBackButtonPressed,
    required this.notificationIcon,
    this.onNotificationPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: kToolbarHeight,
        decoration: const BoxDecoration(
          color: GraphicsColorConsts.lightBlue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showBackButton)
              GestureDetector(
                onTap: onBackButtonPressed,
                child: const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: SvgAsset(
                    asset: AssetConsts.iconBackButton,
                    package: AssetConsts.package,
                  ),
                ),
              )
            else
              const SizedBox(
                width: 20,
                height: 20,
              ),
            Text(
              title,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            if (notificationIcon)
              GestureDetector(
                onTap: onNotificationPressed,
                child: const NotificationIconButton(),
              )
            else
              const SizedBox(
                width: 20,
                height: 20,
              ),
          ],
        ),
      ),
      Stack(
        children: [
          Container(
            height: 20, // Adjust the height of the container as needed
            color: GraphicsColorConsts.lightBlue,
          ),
          const Positioned(
              top: 6, left: 0, right: 0, child: CustomBorderedWidget())
        ],
      )
    ]);
  }
}
