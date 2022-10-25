import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:parallel/pages/registration/auth_page.dart';
import 'package:parallel/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return (snapshot.hasData) ? HomePage() : AuthPage();
        },
      ),
    );
  }
}
