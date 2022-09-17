import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/auth/sign_in_screen.dart';
import 'package:marhapass/src/pages/login_page.dart';
import 'package:marhapass/src/pages/profile/profile_screen.dart';
import 'package:marhapass/src/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarhaApp',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignInScreenPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const UserRegisterPage(),
        '/profile': (context) => const ProfileScreen()
      },
    );
  }
}
