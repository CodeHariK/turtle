import 'package:flutter/material.dart';

import 'main.dart';

class Styles {
  static const double hzScreenPadding = 18.0;
  static const double cardBorderRadius = 10.0;

  static final TextStyle baseTitle = TextStyle(
    fontFamily: 'DMSerifDisplay',
    package: ParallaxTravelcardsHero.pkg,
  );
  static final TextStyle baseBody = TextStyle(
    fontFamily: 'OpenSans',
    package: ParallaxTravelcardsHero.pkg,
  );

  static final TextStyle appHeader = baseTitle.copyWith(
    color: Color(0xFF0e0e0e),
    fontSize: 24,
    height: 1.2,
  );

  static final TextStyle cardTitle = baseTitle.copyWith(
    height: 1,
    color: Color(0xFF1a1a1a),
    fontSize: 25,
  );
  static final TextStyle cardSubtitle = baseBody.copyWith(
    color: Color(0xFF666666),
    height: 1.4,
    fontSize: 12,
  );
  static final TextStyle cardAction = baseBody.copyWith(
    color: Color(0xFFa6998b),
    fontSize: 12,
    height: 1,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
  );

  static final TextStyle hotelsTitleSection = baseBody.copyWith(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 2,
  );
  static final TextStyle hotelTitle = baseBody.copyWith(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle hotelPrice = baseBody.copyWith(
    color: Color(0xff4d4d4d),
    fontSize: 13,
  );
  static final TextStyle hotelScore = baseBody.copyWith(
    color: Color(0xff0e0e0e),
    fontSize: 11,
  );
  static final TextStyle hotelData = baseBody.copyWith(
    color: Colors.grey[700],
    fontSize: 11,
  );

  static final TextStyle detailsTitleSection = baseBody.copyWith(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle detailsCardTitle = baseBody.copyWith(
    color: Colors.black,
    fontSize: 10,
    letterSpacing: 0.5,
  );
}
