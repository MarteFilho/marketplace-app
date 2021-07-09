import 'package:flutter/material.dart';

class ContainerComponent extends StatelessWidget {
  final double width;
  final double height;
  final Alignment alignment;
  final Decoration decoration;
  final EdgeInsets padding;
  final Color color;
  final Widget child;

  const ContainerComponent(
      {Key key,
      this.width,
      this.height,
      this.alignment,
      this.decoration,
      this.padding,
      this.color,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      decoration: decoration,
      padding: padding,
      color: color,
      child: child,
    );
  }
}
