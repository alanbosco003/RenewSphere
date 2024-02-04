import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';

class CustomRoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final String imageUrl;

  const CustomRoundButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.height,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 122,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(35),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        imageUrl,
                        package: AssetConsts.package,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(text,
                    style: GraphicsTextStylesConst.textStyleBlack_12_400),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
