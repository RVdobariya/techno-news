import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/iconbox.dart';

PreferredSizeWidget appbar(
    {BuildContext? context,
    IconData? iconData,
    IconData? iconData2,
    String? title,
    Function()? ontap1,
    Function()? ontap2}) {
  return AppBar(
    backgroundColor: Appcolor.background,
    elevation: 0,
    title: Text(
      title==null ? "" : "${title}",
      style: textstyle(color: Appcolor.blackcolor, dark: true, size: 24),
    ),
    centerTitle: false,
    actions: [
      iconData == null
          ? Container()
          : GestureDetector(
              onTap: ontap1,
              child: iconbox(icon: iconData),
            ),
              iconData2 == null
          ? Container()
          : GestureDetector(
              onTap: ontap2,
              child: iconbox(icon: iconData2),
            ),
    ],
  );
}
