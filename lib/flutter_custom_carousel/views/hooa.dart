import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel/flutter_custom_carousel.dart';

int getCircularDistance(int current, int target, int totalItems) {
  // Calculate clockwise distance
  int clockwise = (target - current + totalItems) % totalItems;

  // Calculate counter-clockwise distance
  int counterClockwise = (current - target + totalItems) % totalItems;

  // Return the minimum of the two distances
  return Math.min(clockwise, counterClockwise);
}

enum CoverFlowStyle {
  none,
  scale,
  opacity,
  both;

  bool get isOpacity => this == CoverFlowStyle.opacity;
  bool get isScale => this == CoverFlowStyle.scale;
  bool get isBoth => this == CoverFlowStyle.both;
}

class CoverFlowCarousel extends StatefulWidget {
  const CoverFlowCarousel({
    super.key,
    this.style = CoverFlowStyle.both,
    required this.images,
    this.maxHeight = 150.0,
    this.minItemWidth = 40.0,
    this.maxItemWidth = 200.0,
    this.spacing = 20.0,
    this.yOffset = 40.0, // Control vertical offset
    this.zOffset = 100.0, // Control z-axis elevation
  });

  final CoverFlowStyle style;
  final List<String> images;
  final double maxHeight;
  final double minItemWidth;
  final double maxItemWidth;
  final double spacing;
  final double yOffset;
  final double zOffset;

  @override
  State<CoverFlowCarousel> createState() => _CoverFlowCarouselState();
}

class _CoverFlowCarouselState extends State<CoverFlowCarousel> {
  late CustomCarouselScrollController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = CustomCarouselScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double getCardPosition(int distance) {
    final double center = widget.maxItemWidth / 2;
    final double centerWidgetWidth = widget.maxItemWidth / 4;
    final double basePosition = center - centerWidgetWidth / 2 - 12;

    final double nearWidgetWidth = centerWidgetWidth / 5 * 4;
    final double farWidgetWidth = centerWidgetWidth / 5 * 3;

    if (distance == 0) {
      return basePosition;
    } else if (distance.abs() > 0.0 && distance.abs() <= 1.0) {
      if (distance > 0) {
        return basePosition - nearWidgetWidth * distance.abs();
      } else {
        return basePosition + centerWidgetWidth * distance.abs();
      }
    } else if (distance.abs() >= 1.0 && distance.abs() <= 2.0) {
      if (distance > 0) {
        return (basePosition - nearWidgetWidth) -
            farWidgetWidth * (distance.abs() - 1);
      } else {
        return (basePosition + centerWidgetWidth + nearWidgetWidth) +
            farWidgetWidth * (distance.abs() - 2) -
            (nearWidgetWidth - farWidgetWidth) *
                ((distance - distance.floor()));
      }
    } else {
      if (distance > 0) {
        return (basePosition - nearWidgetWidth) -
            farWidgetWidth * (distance.abs() - 1);
      } else {
        return (basePosition + centerWidgetWidth + nearWidgetWidth) +
            farWidgetWidth * (distance.abs() - 2);
      }
    }
  }

  double getCardWidth(int distance) {
    final double centerWidgetWidth = widget.maxItemWidth / 3.5;
    final double nearWidgetWidth = centerWidgetWidth / 5 * 4.5;
    final double farWidgetWidth = centerWidgetWidth / 5 * 3.5;

    if (distance >= 0.0 && distance < 1.0) {
      return centerWidgetWidth -
          (centerWidgetWidth - nearWidgetWidth) * (distance - distance.floor());
    } else if (distance >= 1.0 && distance < 2.0) {
      return nearWidgetWidth -
          (nearWidgetWidth - farWidgetWidth) * (distance - distance.floor());
    } else {
      return farWidgetWidth;
    }
  }

  Matrix4 getTransform(int index, int distance) {
    final skewAngle = .25;

    var transform = Matrix4.identity()
      ..setEntry(3, 2, 0.007)
      ..rotateY(skewAngle * distance)
      ..scale(1.25, 1.25, 1.25);
    if (index == _selectedIndex) transform..scale(1.05, 1.05, 1.05);
    return transform;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.maxHeight,
      child: CustomCarousel(
        itemCountBefore: 3,
        itemCountAfter: 3,
        scrollDirection: Axis.horizontal,
        loop: true,
        controller: _controller,
        alignment: Alignment.center,
        effectsBuilder: (index, ratio, child) {
          final go = 3 + 3 + 1;
          final itc = 1 / go;

          final distance = getCircularDistance(
            index,
            _selectedIndex,
            widget.images.length,
          );
          final adjustedDistance = distance * ratio.sign;

          final scale = widget.style.isScale || widget.style.isBoth
              ? 1.0 - (ratio.abs() * 0.15)
              : 1.0;

          final opacity = widget.style.isOpacity || widget.style.isBoth
              ? (1.0 - (ratio.abs() * 0.2)).clamp(0.0, 1.0)
              : 1.0;

          final rrr = (distance) * (itc * 2);

          // final itemWidth = widget.maxItemWidth * (distance / go);
          final itemWidth = (1 - rrr) * widget.maxItemWidth;
          final remWidth = ratio.abs() * widget.maxItemWidth;

          // final tra =
          //     // -widget.maxItemWidth / 2 +
          //     // (_selectedIndex - index) *
          //     (ratio) * widget.maxItemWidth;

          // final xOffset = tra;
          final xOffset = getCardPosition(distance);
          // final xOffset =
          //     // remWidth * adjustedDistance / 10 +
          //     (go / 2) * ratio * widget.maxItemWidth;
          // final xOffset = 2.5 * ratio * widget.maxItemWidth;
          // final xOffset = 1.8 * ratio * (itemWidth + widget.spacing * 2);

          // Reverse Z-offset calculation so center is closest (smallest negative Z)
          final zOffset = -widget.zOffset * ratio.abs() * .01;
          final yOffset = widget.yOffset * ratio.abs();

          // Create perspective effect
          final perspective = Matrix4.identity()
            ..setEntry(3, 2, 0.001) // Add perspective
            ..translate(xOffset, yOffset, zOffset);

          return Transform(
            alignment: Alignment.center,
            transform: getTransform(index, distance),
            // transform: perspective,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: widget.spacing),
              child: Transform.scale(
                scale: 1,
                // scale: scale,
                child: Opacity(
                  opacity: opacity,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(width: itemWidth, child: child),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Column(
                            children: [
                              Text("i:${index}"),
                              Text("s:${_selectedIndex}"),
                              Text("d:${(adjustedDistance)}"),
                              Text("a:${(rrr).toStringAsFixed(2)}"),
                              Text("r:${ratio.toStringAsFixed(2)}"),
                              Text("z:${ratio.toStringAsFixed(2)}"),
                              Text("w:${itemWidth.toStringAsFixed(2)}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        onSelectedItemChanged: (value) => setState(() {
          _selectedIndex = value;
        }),
        children: List.generate(
          widget.images.length,
          (index) => _CoverFlowCard(
            imagePath: widget.images[index],
            isSelected: index == _selectedIndex,
            height: widget.maxHeight,
          ),
        ),
      ),
    );
  }
}

class _CoverFlowCard extends StatelessWidget {
  const _CoverFlowCard({
    required this.imagePath,
    required this.isSelected,
    required this.height,
  });

  final String imagePath;
  final bool isSelected;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(imagePath, height: height, fit: BoxFit.cover),
    );
  }
}

class CoverFlowCarouselPage extends StatelessWidget {
  const CoverFlowCarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    final valueNotifier = ValueNotifier<CoverFlowStyle>(CoverFlowStyle.both);

    return Scaffold(
      appBar: AppBar(title: const Text('Coverflow Carousel')),
      body: ValueListenableBuilder(
        valueListenable: valueNotifier,
        builder: (context, style, _) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CoverFlowCarousel(
                  style: style,
                  maxHeight: 150,
                  minItemWidth: 50,
                  maxItemWidth: 120,
                  spacing: 30,
                  yOffset: 40.0,
                  zOffset: 400.0,

                  images: const [
                    'assets/images/cover_slider/food-a-2.jpg',
                    'assets/images/cover_slider/food-a-1.jpg',
                    'assets/images/cover_slider/food-a-2.jpg',
                    'assets/images/cover_slider/food-a-3.jpg',
                    'assets/images/cover_slider/food-a-4.jpg',
                    'assets/images/cover_slider/food-a-5.jpg',
                    'assets/images/cover_slider/food-a-3.jpg',
                  ],
                ),
                const SizedBox(height: 20),
                SegmentedButton<CoverFlowStyle>(
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment(
                      value: CoverFlowStyle.none,
                      label: Text('None'),
                    ),
                    ButtonSegment(
                      value: CoverFlowStyle.scale,
                      label: Text('Scale'),
                    ),
                    ButtonSegment(
                      value: CoverFlowStyle.opacity,
                      label: Text('Opacity'),
                    ),
                    ButtonSegment(
                      value: CoverFlowStyle.both,
                      label: Text('Both'),
                    ),
                  ],
                  selected: {style},
                  onSelectionChanged: (value) {
                    valueNotifier.value = value.last;
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
