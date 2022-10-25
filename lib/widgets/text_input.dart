import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum TextInputState { inactive, active, disabled }

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String placeholder;
  final TextInputState state;

  const TextInput({
    super.key,
    required this.controller,
    this.label = "",
    this.placeholder = "",
    this.state = TextInputState.inactive,
  });

  @override
  Widget build(BuildContext context) {
    BorderSide border = const BorderSide(color: Colors.black, width: 3);

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        hintText: placeholder,
        // isCollapsed: true,
        // floatingLabelBehavior: FloatingLabelBehavior.never,

        // border: MyInputBorder(),
        contentPadding: EdgeInsets.all(10),
        // suffixIcon: Icon(Icons.access_alarms_rounded),
      ),
    );
  }
}

class MyInputBorder extends InputBorder {
  const MyInputBorder({
    super.borderSide = const BorderSide(),
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(4.0),
      topRight: Radius.circular(4.0),
    ),
  }) : assert(borderRadius != null);

  final BorderRadius borderRadius;

  @override
  bool get isOutline => false;

  @override
  MyInputBorder copyWith({BorderSide? borderSide, BorderRadius? borderRadius}) {
    return MyInputBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.only(bottom: borderSide.width);
  }

  @override
  MyInputBorder scale(double t) {
    return MyInputBorder(borderSide: borderSide.scale(t));
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRect(Rect.fromLTWH(rect.left, rect.top, rect.width,
          math.max(0.0, rect.height - borderSide.width)));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRRect(borderRadius.resolve(textDirection).toRRect(rect));
  }

  @override
  void paintInterior(Canvas canvas, Rect rect, Paint paint,
      {TextDirection? textDirection}) {
    canvas.drawRRect(borderRadius.resolve(textDirection).toRRect(rect), paint);
  }

  @override
  bool get preferPaintInterior => true;

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is MyInputBorder) {
      return MyInputBorder(
        borderSide: BorderSide.lerp(a.borderSide, borderSide, t),
        borderRadius: BorderRadius.lerp(a.borderRadius, borderRadius, t)!,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is MyInputBorder) {
      return MyInputBorder(
        borderSide: BorderSide.lerp(borderSide, b.borderSide, t),
        borderRadius: BorderRadius.lerp(borderRadius, b.borderRadius, t)!,
      );
    }
    return super.lerpTo(b, t);
  }

  /// Draw a horizontal line at the bottom of [rect].
  ///
  /// The [borderSide] defines the line's color and weight. The `textDirection`
  /// `gap` and `textDirection` parameters are ignored.
  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    double? gapStart,
    double gapExtent = 0.0,
    double gapPercentage = 0.0,
    TextDirection? textDirection,
  }) {
    if (borderRadius.bottomLeft != Radius.zero ||
        borderRadius.bottomRight != Radius.zero) {
      canvas.clipPath(getOuterPath(rect, textDirection: textDirection));
    }

    Offset off = const Offset(0, -20);
    canvas.drawLine(rect.bottomRight, rect.bottomLeft, borderSide.toPaint());
    canvas.drawLine(rect.bottomLeft, rect.topLeft - off, borderSide.toPaint());
    canvas.drawLine(
        rect.topLeft - off, rect.topRight - off, borderSide.toPaint());
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is InputBorder && other.borderSide == borderSide;
  }

  @override
  int get hashCode => borderSide.hashCode;
}
