import 'package:flutter/material.dart';
import 'package:turtle/vignettes/_shared/ui/animated_sprite.dart';

import 'main.dart';
import 'product_details_transition.dart';

class ProductDetailsHeroFlight extends StatelessWidget {
  final Animation<double> animation;
  final BuildContext toHeroContext;
  final double frameWidth;
  final double frameHeight;

  const ProductDetailsHeroFlight({
    Key? key,
    required this.animation,
    required this.toHeroContext,
    required this.frameWidth,
    required this.frameHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          width: frameWidth,
          height: frameHeight,
          child: AnimatedSprite(
            image: AssetImage(
              "images/speaker_sprite.png",
              package: ProductDetailZoom.pkg,
            ),
            frameWidth: 360,
            frameHeight: 500,
            animation: Tween(begin: 0.0, end: 59.0).animate(
              CurvedAnimation(curve: Interval(0, .8), parent: animation),
            ),
          ),
        ),
        Container(
          width: frameWidth,
          height: frameHeight,
          child: AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget? child) {
              return DefaultTextStyle(
                style: DefaultTextStyle.of(toHeroContext).style,
                child: ProductDetailsTransition(
                  animationValue: animation.value,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
