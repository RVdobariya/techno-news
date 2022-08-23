import 'package:flutter/material.dart';
import 'package:techno_news/config/appcolor.dart';
import 'package:techno_news/screen/search/searchtabbar/searchnews.dart';
import 'package:techno_news/screen/search/searchtabbar/searchpeople.dart';
import 'package:techno_news/widget/appbar.dart';
import 'package:techno_news/widget/apptextfild.dart';
import 'package:techno_news/widget/apptextstly.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  // ignore: unused_field
  TabController? _tab;
  @override
  void initState() {
    _tab = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      appBar: appbar(title: "Search"),
      body: Column(
        children: [
          textfild(title: "Search", suufix: Icons.search),
          TabBar(controller: _tab, tabs: [
            Tab(
              child: Text("News",
                  style: textstyle(color: Appcolor.blackcolor, dark: true)),
            ),
            Tab(
              child: Text("People",
                  style: textstyle(color: Appcolor.blackcolor, dark: true)),
            ),
          ]),
          Expanded(
              child: TabBarView(
            controller: _tab,
            children: const [
              Searchnews(),
              Searchpeople(),
              
            ],
          ))
        ],
      ),
    );
  }
}
