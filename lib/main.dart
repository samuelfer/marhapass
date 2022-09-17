import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/auth/signin_page.dart';
import 'package:marhapass/src/pages/profile/profile.dart';
import 'package:marhapass/src/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App de Senhas',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SigninPage(),
        '/register': (context) => const UserRegisterPage(),
        '/profile': (context) => const Profile()
      },
    );
  }
}
