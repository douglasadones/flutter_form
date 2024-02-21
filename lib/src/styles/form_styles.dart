import 'package:flutter/material.dart';

class FormStyles {
  static InputDecoration textFormsStyle({
    required String labelText,
    required IconData preFixIcon,
    Widget? suffix,
  }) {
    return InputDecoration(
      label: Text(labelText),
      prefixIcon: Icon(preFixIcon),
      suffixIcon: suffix ?? const SizedBox.shrink(),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 3),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 3),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.yellow, width: 3),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange, width: 3),
      ),
    );
  }
}
