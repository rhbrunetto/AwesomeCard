import 'package:flutter/material.dart';

class CardBackgrounds {
  CardBackgrounds._();

  static Widget custom(Color color) => Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: color,
      );

  static Widget black = custom(
    Color(0xff0B0B0F),
  );

  static Widget white = custom(
    Color(0xffF9F9FA),
  );
}
