import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';

Widget iconbox({BuildContext?context,IconData?icon}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lighblue,
      ),
      child: Icon(icon,color: Appcolor.darkblue,),
    ),
  );
}