import 'dart:async';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';

class CarouselSliderWidget extends StatefulWidget {
  final List<CarouselItem> items;
  final double? heightRatio;
  final double? widthRatio;

  const CarouselSliderWidget({
    Key? key,
    required this.items,
    this.heightRatio,
    this.widthRatio,
  }) : super(key: key);

  @override
  CarouselSliderWidgetState createState() => CarouselSliderWidgetState();
}

class CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  late PageController _pageController;
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 3), _onTimer);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _onTimer(Timer timer) {
    if (_currentIndex < widget.items.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      _pageController.animateToPage(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height =
        widget.heightRatio ?? MediaQuery.of(context).size.height * 0.40;
    double width =
        widget.widthRatio ?? MediaQuery.of(context).size.width * 0.95;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          height: height,
          width: width,
          child: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: widget.items.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = widget.items[index];
                  return buildCarouselItem(item, height, width);
                },
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    widget.items.length,
                    (index) => _buildIndicator(index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCarouselItem(CarouselItem item, double height, double width) {
    return GestureDetector(
      onTap: () {
        item.onPress();
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              image: DecorationImage(
                image: item.isAssetImage
                    ? AssetImage(
                        item.image,
                        package: AssetConsts.package,
                      )
                    : NetworkImage(item.image) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  item.title,
                  style: GraphicsTextStylesConst.textStyleWhite_13_400,
                ),
                const SizedBox(height: 5),
                Text(
                  item.subtitle,
                  style: GraphicsTextStylesConst.textStyleWhite_14_500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.white : Colors.grey,
      ),
    );
  }
}

class CarouselItem {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPress;
  final bool isAssetImage;

  CarouselItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPress,
    this.isAssetImage = false,
  });
}
