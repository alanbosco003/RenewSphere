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
          image: AssetConsts.imageBird,
          title: 'The Earth does not belong to us: we belong to the Earth.',
          subtitle: 'Marlee Matlin',
          onPress: () {
            print("First Icon pressed");
            // Handle onPress for Item 1
          },
          isAssetImage: true,
        ),
        CarouselItem(
          image: AssetConsts.imageSquid,
          title:
              'What we are doing to the forests of the world is but a mirror reflection of what we are doing to ourselves and to one another.',
          subtitle: 'Mahatma Gandhi',
          onPress: () {
            // Handle onPress for Item 2
          },
          isAssetImage: true,
        ),
        CarouselItem(
          image: AssetConsts.imagePlant,
          title: 'We wont have a society if we destroy the environment.',
          subtitle: 'Margaret Mead',
          onPress: () {
            // Handle onPress for Item 2
          },
          isAssetImage: true,
        ),
        CarouselItem(
          image: AssetConsts.imageTiger,
          title:
              'The best time to plant a tree was 20 years ago. The second best time is now.',
          subtitle: 'Chinese Proverb',
          onPress: () {
            // Handle onPress for Item 2
          },
          isAssetImage: true,
        ),
        // Add more items as needed
      ],
      // heightRatio: 400,
      // widthRatio: 800,
    );
  }
}

    // Image.asset(
    //   AssetConsts.loginInitialPageGold,
    //   package: AssetConsts.package,
    // );