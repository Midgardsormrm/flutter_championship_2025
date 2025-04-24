import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:input_code_field/input_code_field.dart';


class CustomCodeItem extends StatelessWidget {
  final String char;
  final bool fieldFocused;
  final bool itemFocused;

  const CustomCodeItem({
    required Key key,
    this.char = '',
    this.fieldFocused = false,
    this.itemFocused = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.0,
      height: 42.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: fieldFocused ? (itemFocused ? Colors.grey : Colors.grey.withOpacity(0.5)) : Colors.grey.withOpacity(0.25),
        border: Border.all(color: itemFocused ? Colors.black : Colors.grey),
      ),
      child: Center(
        child: Text(
          char,
          style: Theme.of(context).primaryTextTheme.headline4,
        ),
      ),
    );
  }
}

extension on TextTheme {
  get headline4 => null;
}
