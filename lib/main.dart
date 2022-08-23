import 'package:flutter/material.dart';
import 'package:techno_news/screen/home/homepage.dart';
import 'package:techno_news/screen/login/createaccount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.blue))),
      home: const CreateAccount(),
      debugShowCheckedModeBanner: false,
    );
  }
}
