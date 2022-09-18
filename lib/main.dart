import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/base/base_screen.dart';
import 'package:marhapass/src/pages/auth/sign_in_screen.dart';
import 'package:marhapass/src/pages/home/home_tab.dart';
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
        scaffoldBackgroundColor: Colors.grey[200],
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
