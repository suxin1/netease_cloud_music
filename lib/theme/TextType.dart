import "package:flutter/material.dart";

final baseTextStyle = const TextStyle(fontFamily: "Poppins");

final headerTextStyle = baseTextStyle.copyWith(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);

final regularTextStyle = baseTextStyle.copyWith(
    color: const Color(0xffb6b2df), fontSize: 9.0, fontWeight: FontWeight.w400);

final subHeaderTextStyle = regularTextStyle.copyWith(
  fontSize: 12.0,
);

class TextType {
  static final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins'
  );
  static final smallPrimary = common.copyWith(
    fontSize: 12.0,
  );
  static final smallSecondary = smallPrimary.copyWith(
    color: Color(0xFFAAAAAA)
  );

  static final common = baseTextStyle.copyWith(
      color: const Color(0xFF000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400
  );
  static final title = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600
  );
  static final header = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w500
  );
  static final subtitle = baseTextStyle.copyWith(
    color: Color(0xFFAAAAAA),
  );
}
