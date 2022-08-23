import 'package:flutter/material.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/catagorybox.dart';
import 'package:techno_news/widget/postbox.dart';
import 'package:techno_news/widget/startingtext.dart';

import '../../../config/appcolor.dart';
import '../../newsdetails/newsdetails.dart';

class Searchnews extends StatefulWidget {
  const Searchnews({Key? key}) : super(key: key);

  @override
  _SearchnewsState createState() => _SearchnewsState();
}

class _SearchnewsState extends State<Searchnews> {
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
  List<String> catagory = [
    "Treding",
    "Latest",
    "Politics",
    "Health",
    "World",
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: 55,
          child: ListView.builder(
              itemCount: catagory.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = i;
                      });
                    },
                    child: catagorybox(
                      catagory: "${catagory[i]}",
                      backcolor:
                          index == i ? Appcolor.bluecolor : Appcolor.whitecolor,
                      textcolor:
                          index == i ? Appcolor.whitecolor : Appcolor.bluecolor,
                    ),
                  ),
                );
              }),
        ),
        starttext(start: "Search Result", end: "10 found"),
        ListView.builder(
            itemCount: data.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
            })
      ],
    );
  }
}
