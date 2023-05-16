import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon (
              Icons.people,
              size: 40,
            ),
            const TextField(
              decoration: InputDecoration(
              label: Text('Login'), ),
            ),
            SizedBox(height: 25),
            const TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Senha')
              ),

            ),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){}, child: Text('Entrar'))
          ],
        ),
      ),
    );
  }
}
