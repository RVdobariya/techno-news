import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/apptextstly.dart';

import '../home/homepage.dart';

class FillProfile extends StatefulWidget {
  const FillProfile({Key? key}) : super(key: key);

  @override
  _FillProfileState createState() => _FillProfileState();
}

class _FillProfileState extends State<FillProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(title: "Fill your Profile"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: size.height / 7,
                width: size.width / 3,
                child: Stack(
                  children: [
                    const Center(
                        child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person_add,
                        size: 50,
                      ),
                    )),
                    Positioned(
                        top: size.height / 11,
                        right: size.width / 33,
                        child: Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.edit_outlined,
                            size: 15,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.black38),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Full Name",
                style: textstyle(
                    color: Appcolor.blackcolor,
                    dark: true,
                    size: size.height / 50),
              ),
            ),
            textfild(title: "Full name"),
            SizedBox(
              height: size.height / 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Username",
                style: textstyle(
                    color: Appcolor.blackcolor,
                    dark: true,
                    size: size.height / 50),
              ),
            ),
            textfild(title: "Username"),
            SizedBox(
              height: size.height / 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Email",
                style: textstyle(
                    color: Appcolor.blackcolor,
                    dark: true,
                    size: size.height / 50),
              ),
            ),
            textfild(title: "Email", suufix: Icons.email),
            SizedBox(
              height: size.height / 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Phone Number",
                style: textstyle(
                    color: Appcolor.blackcolor,
                    dark: true,
                    size: size.height / 50),
              ),
            ),
            textfild(title: "Phone Number"),
            SizedBox(
              height: size.height / 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const Home()),
                      (route) => false);
                },
                child: Container(
                  height: size.height/17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Appcolor.bluecolor),
                  alignment: Alignment.center,
                  child: Text(
                    "Continue",
                    style: textstyle(
                        color: Appcolor.whitecolor, dark: true, size: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
