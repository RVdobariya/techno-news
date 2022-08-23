import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/apptextstly.dart';

Widget starttext({BuildContext?context,String?start,String?end,Function()?Ontap}){
  return ListTile(
          leading: Text("${start}",style: textstyle(color: Appcolor.blackcolor,dark: true),),
          trailing: GestureDetector(
            onTap: Ontap,
            child: end==null? SizedBox(height: 5,width: 5,):  Text(
              "${end}",
              style: textstyle(color: Appcolor.bluecolor),
            ),
          ),
        );
}