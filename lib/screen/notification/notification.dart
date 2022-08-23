import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextstly.dart';
import 'package:techno_news/widget/catagorybox.dart';
import 'package:techno_news/widget/followbutton.dart';

class NotiFication extends StatefulWidget {
  const NotiFication({Key? key}) : super(key: key);

  @override
  _NotiFicationState createState() => _NotiFicationState();
}

class _NotiFicationState extends State<NotiFication> {
  List<Map<String, dynamic>> data = [
    {
      "time": "Today ,December 22 ,2021",
      "data": [
        {
          "title": "Your login is succesfully",
          "subtitle": "5 minutes ago",
          "logo": "https://pic.onlinewebfonts.com/svg/img_328921.png"
        },
        {
          "title": "Fenil kothiya Follow you",
          "subtitle": "15 minutes ago",
          "logo":
              "https://www.pinkvilla.com/imageresize/shahid-kapoor-interview.jpg?width=752&format=webp&t=pvorg",
          "follow": true
        },
      ]
    },
    {
      "time": "Today ,December 22 ,2021",
      "data": [
        {
          "title": "Your login is succesfully",
          "subtitle": "5 minutes ago",
          "logo": "https://pic.onlinewebfonts.com/svg/img_328921.png"
        },
        {
          "title": "Fenil kothiya Follow you",
          "subtitle": "15 minutes ago",
          "logo":
              "https://www.pinkvilla.com/imageresize/shahid-kapoor-interview.jpg?width=752&format=webp&t=pvorg",
          "follow": true
        },
      ]
    },
    {
      "time": "Today ,December 22 ,2021",
      "data": [
        {
          "title": "Your login is succesfully",
          "subtitle": "5 minutes ago",
          "logo": "https://pic.onlinewebfonts.com/svg/img_328921.png"
        },
        {
          "title": "Fenil kothiya Follow you",
          "subtitle": "15 minutes ago",
          "logo":
              "https://www.pinkvilla.com/imageresize/shahid-kapoor-interview.jpg?width=752&format=webp&t=pvorg",
          "follow": true
        },
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      appBar: appbar(title: "Notification", iconData: Icons.more_vert),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${data[i]["time"]}"),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: data[i]["data"].length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, j) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Appcolor.whitecolor,
                                  backgroundImage: NetworkImage(
                                      "${data[i]["data"][j]["logo"]}"),
                                ),
                                title: Text("${data[i]["data"][j]["title"]}"),
                                subtitle:
                                    Text("${data[i]["data"][j]["subtitle"]}"),
                                trailing: data[i]["data"][j]["follow"] == true
                                    ? followButton(title: "Follow")
                                    : const SizedBox(
                                        height: 5,
                                        width: 5,
                                      )),
                          ),
                        );
                      })
                ],
              ),
            );
          }),
    );
  }
}
