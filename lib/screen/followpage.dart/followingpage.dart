import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/screen/followpage.dart/dataofprofile/follower.dart';
import 'package:techno_news/screen/followpage.dart/dataofprofile/yourfollowing.dart';
import 'package:techno_news/screen/newsdetails/newsdetails.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/catagorybox.dart';
import 'package:techno_news/widget/followbutton.dart';
import 'package:techno_news/widget/postbox.dart';

class Followinfpage extends StatefulWidget {
  const Followinfpage({Key? key}) : super(key: key);

  @override
  _FollowinfpageState createState() => _FollowinfpageState();
}

class _FollowinfpageState extends State<Followinfpage> {
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
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(iconData: Icons.share, iconData2: Icons.more_vert),
      body: Column(
        children: [
          const Center(
              child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png"),
            radius: 45,
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "BBC News",
                style: textstyle(dark: true, size: 22),
              ),
            ),
          ),
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: Appcolor.blackcolor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              followButton(
                  iconData: Icons.person_add,
                  title: "Follow",
                  width: 150,
                  hight: 40),
              followButton(
                  iconData: Icons.share_outlined,
                  title: "Website",
                  width: 150,
                  hight: 40)
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: Appcolor.blackcolor,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Nesdetails()));
                    },
                    child: postbox2(
                        imgurl: data[i]["imgurl"],
                        title: data[i]["title"],
                        idname: data[i]["idname"],
                        logo: data[i]["logo"],
                        catagory: data[i]["catagory"],
                        like: data[i]["like"],
                        comment: data[i]["comment"],
                        imgwidth: size.width / 3,
                        boxwidth: size.width / 4),
                  );
                }),
          )
        ],
      ),
    );
  }
}
