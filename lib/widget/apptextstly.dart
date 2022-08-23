import 'package:flutter/material.dart';

TextStyle textstyle({BuildContext? context, bool? dark, Color? color,double?size}) {
  return TextStyle(
      fontWeight: dark == true ? FontWeight.bold : FontWeight.normal,
      color: color,fontSize: size);
}
