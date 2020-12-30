import "package:flutter/material.dart";

class NormalInkFeature extends InteractiveInkFeature {
  NormalInkFeature({
    @required MaterialInkController controller,
    @required RenderBox referenceBox,
  })  : assert(controller != null),
        assert(referenceBox != null),
        super(
          controller: controller,
          referenceBox: referenceBox,
        );
  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {}
}

class NormalInkFactory extends InteractiveInkFeatureFactory {
  const NormalInkFactory();

  @override
  NormalInkFeature create(
      {MaterialInkController controller,
      RenderBox referenceBox,
      Offset position,
      Color color,
      TextDirection textDirection,
      bool containedInkWell = false,
      RectCallback rectCallback,
      BorderRadius borderRadius,
      ShapeBorder customBorder,
      double radius,
      VoidCallback onRemoved}) {
    return NormalInkFeature(controller: controller, referenceBox: referenceBox);
  }
}
