import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/apptextstly.dart';

Widget postbox1(
    {BuildContext? context, String? title, String? imgurl, Function()? ontap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      height: 210,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage("${imgurl}"), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "${title}",
              style:
                  textstyle(color: Appcolor.whitecolor, dark: true, size: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: GestureDetector(
              onTap: ontap,
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Appcolor.bluecolor,
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 57, 147, 221),
                          Colors.blue
                        ])),
                alignment: Alignment.center,
                child: Text(
                  "Read Now",
                  style: textstyle(color: Colors.white, dark: true, size: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget postbox2(
    {BuildContext? context,
    double? imgwidth,
    String? imgurl,
    String? title,
    String? logo,
    String? idname,
    String? catagory,
    String? like,
    String? comment,
    bool? edit,
    Function()? ontap,
    double? boxwidth}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 155,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          GestureDetector(
            onTap: ontap,
            child: SizedBox(
              height: double.infinity,
              width: imgwidth,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  child: Image.network(
                    "${imgurl}",
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: ontap,
                  child: Text(
                    "${title}",
                    style: textstyle(dark: true, size: 17),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage("${logo}"),
                  ),
                  Text("${idname}"),
                  Container(
                    height: 30,
                    width: boxwidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Appcolor.bluecolor)),
                    alignment: Alignment.center,
                    child: Text(
                      "${catagory}",
                      style: textstyle(color: Appcolor.bluecolor),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.thumb_up_alt,
                      color: Appcolor.bluecolor,
                    ),
                    Text("${like}"),
                    const Spacer(),
                    const Icon(
                      Icons.comment,
                      color: Appcolor.bluecolor,
                    ),
                    Text("${comment}"),
                    const Spacer(),
                    const Icon(
                      Icons.turned_in_not_outlined,
                      color: Appcolor.bluecolor,
                    ),
                    const Spacer(),
                    edit == true
                        ? const Icon(
                            Icons.edit,
                            color: Appcolor.bluecolor,
                          )
                        : const SizedBox(
                            height: 5,
                            width: 5,
                          ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    ),
  );
}
