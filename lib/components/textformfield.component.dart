import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldComponent extends StatelessWidget {
  final TextInputType keyBoardType;
  final InputDecoration decoration;
  final String labelText;
  final TextStyle labelStyle;
  final TextStyle style;
  final bool obscureText;
  final ValueSetter<String> onChanged;
  final List<TextInputFormatter> inputFormatters;
  final FormFieldValidator<String> validator;

  const TextFormFieldComponent({
    Key key,
    this.keyBoardType,
    this.decoration,
    this.labelText,
    this.labelStyle,
    this.style,
    this.obscureText = false,
    this.onChanged,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyBoardType,
      decoration: InputDecoration(
        labelText: this.labelText,
        labelStyle: this.labelStyle,
      ),
      style: this.style,
      obscureText: this.obscureText,
      onChanged: this.onChanged,
      inputFormatters: inputFormatters,
      validator: validator,
    );
  }
}
