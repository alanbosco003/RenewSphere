import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';

class CarouselSliderWidget extends StatefulWidget {
  final List<CarouselItem> items;
  final double? heightRatio;
  final double? widthRatio;

  const CarouselSliderWidget({
    super.key,
    required this.items,
    this.heightRatio,
    this.widthRatio,
  });

  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
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
        widget.heightRatio ?? MediaQuery.of(context).size.height * 0.15;
    double width =
        widget.widthRatio ?? MediaQuery.of(context).size.width * 0.85;

    return SizedBox(
      height: height,
      width: width,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.items.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return buildCarouselItem(item);
        },
      ),
    );
  }

  Widget buildCarouselItem(CarouselItem item) {
    return GestureDetector(
      onTap: () {
        item.onPress();
      },
      child: Container(
        height: widget.heightRatio,
        width: widget.widthRatio,
        // Customize your item layout here
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item.isAssetImage
                ? Image.asset(
                    item.image,
                    package: AssetConsts.package,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    item.image,
                    fit: BoxFit.cover,
                  ),
            const SizedBox(height: 10),
            Text(
              item.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              item.subtitle,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
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
