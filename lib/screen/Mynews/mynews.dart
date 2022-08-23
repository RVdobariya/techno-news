import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/screen/Mynews/createnews.dart';
import 'package:techno_news/screen/newsdetails/newsdetails.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/catagorybox.dart';
import 'package:techno_news/widget/postbox.dart';

class MyNews extends StatefulWidget {
  const MyNews({Key? key}) : super(key: key);

  @override
  _MyNewsState createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  int index = 0;
  List<String> catagory = [
    "All",
    "Sports",
    "Politics",
    "Health",
    "World",
  ];
  List<Map> data = [
    {
      "imgurl":
          "https://static01.nyt.com/images/2020/03/18/well/doctors-mask/doctors-mask-superJumbo.jpg?quality=75&auto=webp",
      "title": "Wow! USA DEvelops New Way of faster and More",
      "logo":
          "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png",
      "idname": "Me",
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
      "idname": "Me",
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
      "idname": "Me",
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
      "idname": "Me",
      "catagory": "Food",
      "like": "120.5k",
      "comment": "120.6k"
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Createnews()));
        },
        child: const Icon(Icons.add),
      ),
      appBar: appbar(
          title: "My News",
          iconData: Icons.archive,
          iconData2: Icons.more_vert),
      body: Column(
        children: [
          textfild(title: "search", suufix: Icons.search),
          SizedBox(
            height: 35,
            child: ListView.builder(
                itemCount: catagory.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          index = i;
                        });
                      },
                      child: catagorybox(
                        catagory: "${catagory[i]}",
                        backcolor: index == i
                            ? Appcolor.bluecolor
                            : Appcolor.whitecolor,
                        textcolor: index == i
                            ? Appcolor.whitecolor
                            : Appcolor.bluecolor,
                      ),
                    ),
                  );
                }),
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
                      edit: true,
                      imgwidth: size.width / 3,
                      boxwidth: size.width / 4);
                }),
          )
        ],
      ),
    );
  }
}
