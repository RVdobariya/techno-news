import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/postbox.dart';

import '../newsdetails/newsdetails.dart';

class FeaturedNews extends StatefulWidget {
  const FeaturedNews({Key? key}) : super(key: key);

  @override
  _FeaturedNewsState createState() => _FeaturedNewsState();
}

class _FeaturedNewsState extends State<FeaturedNews> {
  List<Map> data = [
    {
      "img":
          "https://images.hindustantimes.com/img/2022/07/10/550x309/Biden-Guns-23_1654215036438_1657472413856.jpg",
      "title": "Joe Biden in Press Conference USA"
    },
    {
      "img":
          "https://images1.livehindustan.com/uploadimage/library/2020/12/07/16_9/16_9_1/corona_vaccine_update_1607347701.jpg",
      "title": "China Develope New covid-19"
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-couple-together-walking-autumn-park_1303-26181.jpg?w=2000&t=st=1657630150~exp=1657630750~hmac=aac6f7a02fbc77fd0d9e8344292901435a82112fdcde55812c69460798d538f9",
      "title": "Best Love story"
    },
    {
      "img":
          "https://images.hindustantimes.com/img/2022/07/10/550x309/Biden-Guns-23_1654215036438_1657472413856.jpg",
      "title": "Joe Biden in Press Conference USA"
    },
    {
      "img":
          "https://images.hindustantimes.com/img/2022/07/10/550x309/Biden-Guns-23_1654215036438_1657472413856.jpg",
      "title": "Joe Biden in Press Conference USA"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      appBar: appbar(iconData: Icons.more_vert, title: "Featured News"),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: postbox1(
                imgurl: "${data[i]["img"]}",
                title: "${data[i]["title"]}",
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Nesdetails()));
                },
              ),
            );
          }),
    );
  }
}
