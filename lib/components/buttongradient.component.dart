import 'package:flutter/material.dart';

class ButtonGradient extends StatelessWidget {
  final String text;
  final Color colorone;
  final Color colortwo;
  final VoidCallback onPressed;

  const ButtonGradient(
      {Key key,
      @required this.text,
      @required this.colorone,
      @required this.colortwo,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [colorone, colortwo],
            ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 48.0,
            ),
            alignment: Alignment.center,
            child: Text(
              this.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
