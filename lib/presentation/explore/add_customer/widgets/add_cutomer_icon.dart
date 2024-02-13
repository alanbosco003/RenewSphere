import 'package:base_flutter/presentation/explore/index.dart';
import 'package:base_flutter/presentation/login/login_form_page/index.dart';
import 'package:flutter/material.dart';

class AddCustomerIcon extends StatelessWidget {
  const AddCustomerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: UiSizeUtils.getHeightSize(40),
          width: UiSizeUtils.getHeightSize(40),
          decoration: const BoxDecoration(
            color: GraphicsColorConsts.iconBGGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        const Icon(
          Icons.person_add_outlined,
          size: 24,
          color: GraphicsColorConsts.oranch,
        )
      ],
    );
  }
}
