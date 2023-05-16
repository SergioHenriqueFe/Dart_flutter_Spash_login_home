

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
    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('../image/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      color: Color(0xFF033E8C),
      child: Center(
        child: CircularProgressIndicator(
          color: Color(0xFF2CBF6C),
        ),
      ),
    );
  }
}
