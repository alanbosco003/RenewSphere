import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';

class CustomBottomBarIconWidget extends StatelessWidget {
  const CustomBottomBarIconWidget({
    Key? key,
    required this.callback,
    required this.iconDataSelected,
    required this.iconDataUnselected,
    required this.isSelected,
    required this.label,
    required this.activeIcon,
    required this.inActiveIcon,
  }) : super(key: key);

  final VoidCallback callback;
  final bool isSelected;
  final String iconDataSelected;
  final String iconDataUnselected;
  final String label;
  final Icon activeIcon;
  final Icon inActiveIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: callback,
            iconSize: 25,
            icon: isSelected ? activeIcon : inActiveIcon

            //   ? SvgPicture.asset(
            //       iconDataSelected,
            //       package: AssetConsts.package,
            //     )
            //   : SvgPicture.asset(
            //       iconDataUnselected,
            //       package: AssetConsts.package,
            //     ),
            ),
        Text(label,
            style: isSelected
                ? GraphicsTextStylesConst.textStyleBlack_11_600
                : GraphicsTextStylesConst.textStyleBlack_11_300),
      ],
    );
  }
}
