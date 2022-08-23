import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/screen/login/fillprofile.dart';
import 'package:techno_news/screen/login/signin.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/apptextstly.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Create an Account",
                      style: textstyle(
                          color: Appcolor.blackcolor,
                          dark: true,
                          size: size.height / 30),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Email",
                      style: textstyle(
                          color: Appcolor.blackcolor,
                          dark: true,
                          size: size.height / 40),
                    ),
                  ),
                  textfild(title: "Email"),
                  SizedBox(
                    height: size.height / 65,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Password",
                      style: textstyle(
                          color: Appcolor.blackcolor,
                          dark: true,
                          size: size.height / 40),
                    ),
                  ),
                  textfild(title: "Password", suufix: Icons.remove_red_eye),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const FillProfile()),
                            (route) => false);
                      },
                      child: Container(
                        height: size.height / 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Appcolor.bluecolor),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          style: textstyle(
                              color: Appcolor.whitecolor, dark: true, size: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  const Center(child: Text("Or Continue with")),
                  SizedBox(
                    height: size.height / 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: size.height / 18,
                          width: size.width / 3,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "Facebook",
                            style: textstyle(dark: true),
                          ),
                        ),
                        Container(
                          height: size.height / 18,
                          width: size.width / 3,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "Google",
                            style: textstyle(dark: true),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Already have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Signin()));
                          },
                          child: Text(
                            "Sign in",
                            style: textstyle(color: Appcolor.bluecolor),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
