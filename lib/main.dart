import 'package:flutter/material.dart';
import 'package:marhapass/src/pages/auth/sign_in_screen.dart';
import 'package:marhapass/src/pages/profile/profile_tab.dart';
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
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignInScreenPage(),
        '/register': (context) => const UserRegisterPage(),
        '/profile': (context) => const ProfileTab()
      },
    );
  }
}
