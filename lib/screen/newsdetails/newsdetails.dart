import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/screen/followpage.dart/followingpage.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/catagorybox.dart';
import 'package:techno_news/widget/iconbox.dart';
import 'package:techno_news/widget/idname.dart';
import 'package:techno_news/widget/startingtext.dart';

import '../../widget/postbox.dart';

class Nesdetails extends StatefulWidget {
  const Nesdetails({Key? key}) : super(key: key);

  @override
  _NesdetailsState createState() => _NesdetailsState();
}

class _NesdetailsState extends State<Nesdetails> {
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
      appBar:
          AppBar(backgroundColor: Appcolor.background, elevation: 0, actions: [
        iconbox(icon: Icons.share),
        iconbox(icon: Icons.turned_in_not),
        iconbox(icon: Icons.more_vert),
      ]),
      backgroundColor: Appcolor.background,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.hindustantimes.com/img/2022/07/10/550x309/Biden-Guns-23_1654215036438_1657472413856.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Joe Biden in Press Conference USA Announces New Political policy",
              style:
                  textstyle(color: Appcolor.blackcolor, size: 20, dark: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                catagorybox(
                    hight: 30,
                    width: 100,
                    catagory: "Politics",
                    textcolor: Appcolor.bluecolor),
                Spacer(),
                const Icon(
                  Icons.remove_red_eye_rounded,
                  color: Appcolor.bluecolor,
                ),
                Text(
                  "684.6k",
                  style: textstyle(color: Appcolor.blackcolor),
                ),
                const Spacer(),
                const Icon(
                  Icons.thumb_up_alt,
                  color: Appcolor.bluecolor,
                ),
                Text(
                  "358.6k",
                  style: textstyle(color: Appcolor.blackcolor),
                ),
                const Spacer(),
                const Icon(
                  Icons.comment,
                  color: Appcolor.bluecolor,
                ),
                Text(
                  "6.6k",
                  style: textstyle(color: Appcolor.blackcolor),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Followinfpage()));
            },
            child: idname(
              imgurl:
                  "https://bcassetcdn.com/public/blog/wp-content/uploads/2021/11/06183243/NBC-1.png",
              title: "BBC News",
              subtitle: "5 day to ago",
            ),
          ),
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "The benefits of developing applications with open source are too pronounced to ignore, and organizations that do not take advantage of these benefits will be left behind by those that do.The challenge for application development leaders is ensuring they are taking full advantage of all the innovative potential of open source in a way that does not impede developers or put the organization at risk.",
                    style: textstyle(color: Appcolor.blackcolor, size: 17),
                  ),
                );
              }),
          ListTile(
            title: Text(
              "Is this News helpful?",
              style: textstyle(dark: true, color: Appcolor.blackcolor),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.thumb_up_alt,
                  color: Appcolor.bluecolor,
                ),
                Text("358.7k"),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.thumb_down,
                  color: Appcolor.bluecolor,
                ),
                Text("45.9k")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("comments",
                            style: textstyle(
                                color: Appcolor.blackcolor,
                                dark: true,
                                size: 18)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("125.6k",
                            style:
                                textstyle(color: Appcolor.bluecolor, size: 18))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      color: Appcolor.blackcolor,
                    ),
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/premium-psd/news-3d-icon_565634-142.jpg?w=1380"),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Container(
                                decoration: const BoxDecoration(
                                  color: Appcolor.whitecolor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Comments",
                                            style: textstyle(
                                                color: Appcolor.blackcolor,
                                                dark: true,
                                                size: 18),
                                          ),
                                          Text(
                                            "456.8k",
                                            style: textstyle(
                                                color: Appcolor.bluecolor,
                                                dark: true,
                                                size: 18),
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.cancel_outlined,
                                            color: Appcolor.bluecolor,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: Appcolor.blackcolor,
                                    ),
                                    ListTile(
                                      leading: const CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            "https://www.logolynx.com/images/logolynx/3a/3a0bf5be18468c282fbea3c8f706c54f.jpeg"),
                                      ),
                                      trailing: textfild(
                                          title: "Add a Comment",
                                          width: size.width / 1.3),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: 5,
                                          itemBuilder: (context, i) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border:
                                                        Border.all(width: 0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const ListTile(
                                                      leading: CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                "https://www.logolynx.com/images/logolynx/3a/3a0bf5be18468c282fbea3c8f706c54f.jpeg"),
                                                      ),
                                                      title:
                                                          Text("Kartik Virani"),
                                                      subtitle:
                                                          Text("3 Day ago"),
                                                      trailing:
                                                          Icon(Icons.more_vert),
                                                    ),
                                                    const Divider(
                                                      color:
                                                          Appcolor.blackcolor,
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          "Researchers said that the inequities will only increase with climate change. They called for more cooling centers in areas with the greatest need."),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.thumb_up_alt,
                                                            color: Appcolor
                                                                .bluecolor,
                                                          ),
                                                          Text("5.6k"),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Icon(
                                                            Icons.thumb_down,
                                                            color: Appcolor
                                                                .bluecolor,
                                                          ),
                                                          Text("45.8k"),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Icon(
                                                            Icons.comment,
                                                            color: Appcolor
                                                                .bluecolor,
                                                          ),
                                                          Text("345.5k")
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 50,
                        width: size.width / 1.4,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0),
                            borderRadius: BorderRadius.circular(25)),
                        alignment: Alignment.center,
                        child: const Text("Add a comment"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          starttext(
            start: "Related",
          ),
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
      ),
    );
  }
}
