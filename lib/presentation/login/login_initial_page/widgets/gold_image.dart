import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/widgets/slider/carusoul_slider.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSliderWidget(
      items: [
        CarouselItem(
          image: AssetConsts.loginInitialPageGold,
          title: 'Item 1',
          subtitle: 'Subtitle 1',
          onPress: () {
            print("First Icon pressed");
            // Handle onPress for Item 1
          },
          isAssetImage: true,
        ),
        CarouselItem(
          image: AssetConsts.bankImage,
          title: 'Item 2',
          subtitle: 'Subtitle 2',
          onPress: () {
            // Handle onPress for Item 2
          },
          isAssetImage: true,
        ),
        // Add more items as needed
      ],
      heightRatio: 120,
      widthRatio: 300,
    );
  }
}

    // Image.asset(
    //   AssetConsts.loginInitialPageGold,
    //   package: AssetConsts.package,
    // );