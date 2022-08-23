import 'package:flutter/material.dart';
import 'package:techno_news/screen/MyProfile/edit/edit.dart';
import 'package:techno_news/screen/followpage.dart/dataofprofile/follower.dart';
import 'package:techno_news/screen/newsdetails/newsdetails.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/postbox.dart';

import '../followpage.dart/dataofprofile/yourfollowing.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List<Map> data = [
    {
      "imgurl":
          "https://static01.nyt.com/images/2020/03/18/well/doctors-mask/doctors-mask-superJumbo.jpg?quality=75&auto=webp",
      "title": "Wow! USA DEvelops New Way of faster and More",
      "logo":
          "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png",
      "idname": "BBC News",
      "catagory": "Health",
      "like": "120.5k",
      "comment": "120.6k"
    },
    {
      "imgurl":
          "https://cdn.britannica.com/31/149831-050-83A0E45B/Donald-J-Trump-2010.jpg",
      "title": "Hot! Donal Trump Alludes to President joe biden's",
      "logo":
          "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png",
      "idname": "CNN",
      "catagory": "Politics",
      "like": "10.5k",
      "comment": "20.6k"
    },
    {
      "imgurl":
          "https://img.etimg.com/thumb/msid-86712570,width-300,imgsize-37478,,resizemode-4,quality-100/football.jpg",
      "title": "Manchester United Adds a Famous Portugal player",
      "logo":
          "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png",
      "idname": "CNET",
      "catagory": "Sports",
      "like": "120.5k",
      "comment": "120.6k"
    },
    {
      "imgurl":
          "https://static.toiimg.com/thumb/msid-87930581,imgsize-211826,width-800,height-600,resizemode-75/87930581.jpg",
      "title": "Simple Healthy Foods that make You Live long ",
      "logo":
          "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png",
      "idname": "Daily mall",
      "catagory": "Food",
      "like": "120.5k",
      "comment": "120.6k"
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(
          title: "My Profile",
          iconData: Icons.edit,
          iconData2: Icons.logout,
          ontap1: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const EditProfile()));
          }),
      body: Column(
        children: [
          SizedBox(
            height: 115,
            width: 110,
            child: Stack(
              children: [
                const Center(
                    child: CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                      "https://www.business2community.com/wp-content/uploads/2014/04/profile-picture-300x300.jpg"),
                )),
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "@andrew_aisnley",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Text("Daily News"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "873.5k",
                      style: textstyle(dark: true, size: 18),
                    ),
                    Text(
                      "News",
                      style: textstyle(size: 16),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Followers()));
                  },
                  child: Column(
                    children: [
                      Text(
                        "8.5M",
                        style: textstyle(dark: true, size: 18),
                      ),
                      Text(
                        "Followers",
                        style: textstyle(size: 16),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FollowingDetais()));
                  },
                  child: Column(
                    children: [
                      Text(
                        "127",
                        style: textstyle(dark: true, size: 18),
                      ),
                      Text(
                        "Following",
                        style: textstyle(size: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue)),
              alignment: Alignment.center,
              child: const Text(
                "WebSite",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return postbox2(
                      ontap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Nesdetails()));
                      },
                      imgurl: data[i]["imgurl"],
                      title: data[i]["title"],
                      idname: data[i]["idname"],
                      logo: data[i]["logo"],
                      catagory: data[i]["catagory"],
                      like: data[i]["like"],
                      comment: data[i]["comment"],
                      imgwidth: size.width / 3,
                      boxwidth: size.width / 4);
                }),
          )
        ],
      ),
    );
  }
}
