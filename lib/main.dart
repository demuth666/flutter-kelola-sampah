
import 'package:coba/pages/home_page.dart';
import 'package:coba/pages/login_page.dart';
import 'package:coba/pages/sign_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}