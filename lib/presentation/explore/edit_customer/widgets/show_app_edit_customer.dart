import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/widgets/common/custom_app_bar.dart';
import 'package:reactiv/utils/logger.dart';

class ShowAppBar extends StatelessWidget {
  const ShowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTopAppBar(
      title: 'Edit Customer',
      titleStyle: GraphicsTextStylesConst
          .textStyleBlack_13_600, // Customize the style as needed
      showBackButton: true, // Pass your condition here
      onBackButtonPressed: () {
        Logger.info("Pressed Back button");
        // Handle back button press here
      },
      notificationIcon:
          true, // Pass your notification icon here or null if not needed
      onNotificationPressed: () {
        Logger.info("Pressed Notification button");
        // Handle notification button press here
      },
    );
  }
}
