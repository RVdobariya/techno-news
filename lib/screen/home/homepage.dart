import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/screen/MyProfile/myprofile.dart';
import 'package:techno_news/screen/Mynews/mynews.dart';
import 'package:techno_news/screen/bookmark/bookmark.dart';
import 'package:techno_news/screen/newspage/newspage.dart';
import 'package:techno_news/screen/notification/notification.dart';
import 'package:techno_news/screen/search/search.dart';
import 'package:techno_news/widget/appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> scren = [
    Newsfirst(),
    Search(),
    Bookmark(),
    MyNews(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scren[index],
      backgroundColor: Appcolor.background,
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(width: 0),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Appcolor.background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.blue[500] : Appcolor.lighblue,
                  ),
                  child: Icon(
                    Icons.home,
                    color: index == 0 ? Appcolor.whitecolor : Appcolor.darkblue,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 1 ? Colors.blue[500] : Appcolor.lighblue,
                  ),
                  child: Icon(
                    Icons.search,
                    color: index == 1 ? Appcolor.whitecolor : Appcolor.darkblue,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 2 ? Colors.blue[500] : Appcolor.lighblue,
                  ),
                  child: Icon(
                    Icons.turned_in_not,
                    color: index == 2 ? Appcolor.whitecolor : Appcolor.darkblue,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 3 ? Colors.blue[500] : Appcolor.lighblue,
                  ),
                  child: Icon(
                    Icons.menu_outlined,
                    color: index == 3 ? Appcolor.whitecolor : Appcolor.darkblue,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 4 ? Colors.blue[500] : Appcolor.lighblue,
                  ),
                  child: Icon(
                    Icons.person,
                    color: index == 4 ? Appcolor.whitecolor : Appcolor.darkblue,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
