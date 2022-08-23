import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/apptextstly.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    Size szie = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 115,
                width: 110,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                          "https://www.business2community.com/wp-content/uploads/2014/04/profile-picture-300x300.jpg"),
                    ),
                    Positioned(
                        top: 78,
                        right: 4,
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
            SizedBox(
              height: szie.height / 1.7,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Full Name",
                      style: textstyle(
                          color: Appcolor.blackcolor, dark: true, size: 17),
                    ),
                  ),
                  textfild(title: "Full name"),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Username",
                      style: textstyle(
                          color: Appcolor.blackcolor, dark: true, size: 17),
                    ),
                  ),
                  textfild(title: "Username"),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Email",
                      style: textstyle(
                          color: Appcolor.blackcolor, dark: true, size: 17),
                    ),
                  ),
                  textfild(title: "Email", suufix: Icons.email),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "About",
                      style: textstyle(
                          color: Appcolor.blackcolor, dark: true, size: 17),
                    ),
                  ),
                  textfild(title: "About"),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Website",
                      style: textstyle(
                          color: Appcolor.blackcolor, dark: true, size: 17),
                    ),
                  ),
                  textfild(title: "Website"),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: szie.height / 16,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Appcolor.bluecolor),
                alignment: Alignment.center,
                child: Text(
                  "Save changes",
                  style: textstyle(
                      color: Appcolor.whitecolor, dark: true, size: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
