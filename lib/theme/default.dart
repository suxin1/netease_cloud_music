import 'package:flutter/material.dart';

Map<String, Color> themeColors = {
  "primary": Color(0xFFE82303),
  "primaryLight": Color(0xfff9d9da),
  "primaryDark": Color(0xffad0000),
  "secondary": Color(0xffffffff),
  "secondaryLight": Color(0xffffffff),
  "secondaryDark": Color(0xffcccccc),
  "textLight": Color(0xfffafafa),
  "textDark": Color(0xff000000),
};

Map<String, int> spacing = {"small": 8, "big": 16, "extra": 24, "enormous": 32, "common": 16};

class Spacing {
  static const double common = 16;
  static const double small = 8;
  static const double big = 16;
  static const double extra = 24;
  static const double enormous = 32;
}