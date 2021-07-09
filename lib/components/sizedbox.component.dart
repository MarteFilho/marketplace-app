import 'package:flutter/material.dart';

class SizedBoxComponent extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const SizedBoxComponent({Key key, this.width, this.height, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height, child: child);
  }
}
