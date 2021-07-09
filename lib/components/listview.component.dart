import 'package:flutter/material.dart';

class ListViewComponent extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry padding;

  const ListViewComponent({Key key, this.children, this.padding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: this.padding,
      children: this.children,
    );
  }
}
