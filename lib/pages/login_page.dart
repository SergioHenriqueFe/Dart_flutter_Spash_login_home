import 'package:flutter/material.dart';
import 'package:login_api/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginControler _controler = LoginControler();

  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextField(
              decoration: InputDecoration(
                label: Text('Login'),
              ),
              onChanged: _controler.setLogin,
            ),
            SizedBox(height: 25),
            TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(label: Text('Senha')),
              onChanged: _controler.setPass,
            ),
            SizedBox(height: 50),
            ValueListenableBuilder(
              valueListenable: _controler.inLoader,
              builder: (_, inLoader, __) => inLoader
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controler.auth().then(
                          (result) {
                            if (result) {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                 backgroundColor: Colors.red,
                                  content: const Text('Falha ao realizar login', style: TextStyle(color: Colors.black),),
                                  duration: const Duration(seconds: 5),
                                  
                                ),
                              );
                            }
                          },
                        );
                      },
                      child: Text('Entrar'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
