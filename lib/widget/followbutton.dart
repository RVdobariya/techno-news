import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/apptextstly.dart';

Widget followButton(
    {BuildContext? context, IconData? iconData, double? hight, double? width, String?title}) {
  return Container(
    height: hight ?? 35,
    width: width ?? 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Appcolor.bluecolor,
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Icon(
        iconData ?? Icons.add,
        color: Appcolor.whitecolor,
      ),
      Text(
        "${title}",
        style: textstyle(color: Appcolor.whitecolor),
      )
    ]),
  );
}

Widget followingButton({BuildContext? context, double? hight, double? width,}) {
  return Container(
    height: hight ?? 35,
    width: width ?? 100,
    decoration: BoxDecoration(
      border: Border.all(color: Appcolor.bluecolor),
      borderRadius: BorderRadius.circular(30),
    ),
    alignment: Alignment.center,
    child: Text(
      "Following",
      style: textstyle(color: Appcolor.bluecolor),
    ),
  );
}
