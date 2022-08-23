import 'package:flutter/material.dart';

import 'followbutton.dart';

Widget idname(
    {BuildContext? context,
    Function()? ontap,
    String? imgurl,
    String? title,
    String? subtitle,
    bool? follow}) {
  return ListTile(
    leading: CircleAvatar(
      radius: 23,
      backgroundImage: NetworkImage("${imgurl}"),
    ),
    title: Text("${title}"),
    subtitle: Text("${subtitle}"),
    trailing: GestureDetector(
        onTap: ontap,
        child:
            follow == true ? followingButton() : followButton(title: "Follow")),
  );
}
