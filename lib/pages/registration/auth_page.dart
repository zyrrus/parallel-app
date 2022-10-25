import 'package:flutter/widgets.dart';
import 'package:parallel/pages/registration/login_page.dart';
import 'package:parallel/pages/registration/signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showLoginPage
        ? LoginPage(showSignupPage: toggleScreens)
        : SignupPage(showLoginPage: toggleScreens);
  }
}
