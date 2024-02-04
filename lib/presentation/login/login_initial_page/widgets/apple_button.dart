import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/widgets/buttons/rounded_button.dart';

class AppleButton extends StatelessWidget {
  const AppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundButton(
      text: 'Sign up with Apple',
      onPressed: () {
        print("hit apple login");
        // Your callback function
      },
      height: 42, // Customize height as needed
      imageUrl: AssetConsts.appleLogo, // Optional image URL
    );
  }
}
