import 'package:flutter/material.dart';
import 'package:techno_news/screen/followpage.dart/followingpage.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/idname.dart';

class Followers extends StatefulWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  List<Map> data = [
    {
      "logo":
          "https://dp.profilepics.in/profile_pictures/american-girls/american-girls-dp-186.jpg",
      "name": "Krisha Finaviya",
      "followers": "5.7k Followers",
      "follow": true
    },
    {
      "logo": "https://wallpapercave.com/wp/wp10410705.jpg",
      "name": "Smit Desai",
      "followers": "19.4k Followers",
      "follow": false
    },
    {
      "logo": "https://wallpapercave.com/wp/wp7895831.jpg",
      "name": "Kenil Bhuva",
      "followers": "50.7k Followers",
      "follow": false
    },
    {
      "logo": "https://wallpapercave.com/wp/wp10410711.jpg",
      "name": "Parth Dhameliya",
      "followers": "102.7k Followers",
      "follow": true
    },
    {
      "logo":
          "https://www.whatsappimages.in/wp-content/uploads/2022/02/Free-girls-dp-Wallpaper-for-Whatsapp-scaled.jpg",
      "name": "Miral Dhameliya",
      "followers": "5.7k Followers",
      "follow": false
    },
    {
      "logo":
          "https://dp.profilepics.in/profile_pictures/american-girls/american-girls-dp-186.jpg",
      "name": "Renisha Savani",
      "followers": "5.7k Followers",
      "follow": false
    },
    {
      "logo":
          "https://dp.profilepics.in/profile_pictures/american-girls/american-girls-dp-67.jpg",
      "name": "Vidhi Gujrati",
      "followers": "50.7k Followers",
      "follow": false
    },
    {
      "logo": "https://wallpapercave.com/wp/wp7709640.jpg",
      "name": "Fenil Kothiya",
      "followers": "34.67k Followers",
      "follow": true
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "Followers", iconData: Icons.more_vert),
      body: Column(
        children: [
          textfild(title: "Search", suufix: Icons.search),
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Followinfpage()));
                        },
                        child: idname(
                            imgurl: "${data[i]["logo"]}",
                            title: "${data[i]["name"]}",
                            subtitle: "${data[i]["followers"]}",
                            follow: data[i]["follow"],
                            ontap: () {
                              setState(() {
                                data[i]["follow"] = !data[i]["follow"];
                              });
                            }),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
