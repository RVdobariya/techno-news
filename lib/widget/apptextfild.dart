import 'package:flutter/material.dart';

Widget textfild({BuildContext? context,String?title,IconData?prifix,IconData?suufix,double?width}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 45,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Padding(
        padding: const EdgeInsets.only(left : 20.0),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            // prefixIcon:  Icon(prifix),
            suffixIcon: Icon(suufix),
            hintText: "${title}",
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
