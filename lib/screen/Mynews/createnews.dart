import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/catagorybox.dart';
import 'package:techno_news/widget/iconbox.dart';

class Createnews extends StatefulWidget {
  const Createnews({Key? key}) : super(key: key);

  @override
  _CreatenewsState createState() => _CreatenewsState();
}

class _CreatenewsState extends State<Createnews> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(title: "Create News"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      color: Appcolor.bluecolor,
                      size: 32,
                    ),
                  ),
                  Text(
                    "Add Cover Photo",
                    style: textstyle(color: Appcolor.blackcolor, dark: true),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black38),
            ),
            Text(
              "News Details",
              style:
                  textstyle(color: Appcolor.blackcolor, dark: true, size: 22),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text("Title"),
            ),
            textfild(
              title: "title",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text("Select Category"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text("Add News / Article"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                    hintText: "Add News / Article",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconbox(icon: Icons.archive),
            iconbox(icon: Icons.call_to_action_outlined),
            catagorybox(
                catagory: "Publish Now",
                width: 200,
                hight: 50,
                backcolor: Appcolor.bluecolor,
                textcolor: Appcolor.whitecolor),
          ],
        ),
      ),
    );
  }
}
