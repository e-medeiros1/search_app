import 'package:flutter/material.dart';

InputDecoration textFormFieldTheme = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  labelStyle: const TextStyle(color: Colors.blue),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black, width: 2),
    borderRadius: BorderRadius.circular(12),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black, width: 2),
    borderRadius: BorderRadius.circular(12),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red, width: 2),
    borderRadius: BorderRadius.circular(12),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red, width: 2),
    borderRadius: BorderRadius.circular(12),
  ),
);
