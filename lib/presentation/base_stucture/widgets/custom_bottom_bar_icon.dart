import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';

class CustomBottomBarIconWidget extends StatelessWidget {
  const CustomBottomBarIconWidget({
    Key? key,
    required this.callback,
    required this.iconDataSelected,
    required this.iconDataUnselected,
    required this.isSelected,
  }) : super(key: key);

  final VoidCallback callback;
  final bool isSelected;
  final String iconDataSelected;
  final String iconDataUnselected;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      iconSize: 25,
      icon: isSelected
          ? SvgPicture.asset(
              iconDataSelected,
              package: AssetConsts.package,
            )
          : SvgPicture.asset(
              iconDataUnselected,
              package: AssetConsts.package,
            ),
      // Icon(
      //   isSelected ? iconDataSelected : iconDataUnselected,
      //   color: isSelected ? Colors.orangeAccent : Colors.black87,
      // ),
    );
  }
}
