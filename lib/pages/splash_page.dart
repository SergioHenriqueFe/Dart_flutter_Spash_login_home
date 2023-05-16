import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://wallpapercave.com/wp/wp4963221.jpg"),
              fit: BoxFit.cover
        ),
      ),
      // color: Color(0xFF033E8C),
      child: Center(
        child: CircularProgressIndicator(
          color: Color.fromRGBO(249, 251, 250, 1),
        ),
      ),
    );
  }
}
