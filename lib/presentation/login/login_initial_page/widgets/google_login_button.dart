import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/widgets/buttons/rounded_button.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundButton(
      text: 'Sign up with Google',
      onPressed: () {
        print("hit google login");
        // Your callback function
      },
      height: 42, // Customize height as needed
      imageUrl: AssetConsts.googleLogo, // Optional image URL
    );
  }
}
