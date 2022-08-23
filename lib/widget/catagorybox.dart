import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';

import 'apptextstly.dart';

Widget catagorybox(
    {BuildContext? context,
    String? catagory,
    Color? backcolor,
    Color? textcolor,
    double? width,
    double?hight}) {
  return Container(
    width: width ?? 90,
    height: hight,
    decoration: BoxDecoration(
      color: backcolor,
      border: Border.all(color: Appcolor.bluecolor),
      borderRadius: BorderRadius.circular(25),
    ),
    alignment: Alignment.center,
    child: Text(
      "${catagory}",
      style: textstyle(color: textcolor, size: 16),
    ),
  );
}
