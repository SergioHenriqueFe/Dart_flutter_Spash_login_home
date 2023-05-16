import 'package:flutter/material.dart';
import 'package:login_api/pages/home_page.dart';
import 'package:login_api/pages/login_page.dart';
import 'package:login_api/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Início',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/splash',
      routes: {
        '/splash': (_)=>const SplashPage(),
        '/login': (_)=>LoginPage(),
        '/home':(_)=>const HomePage(),
      },
    );
  }
}
