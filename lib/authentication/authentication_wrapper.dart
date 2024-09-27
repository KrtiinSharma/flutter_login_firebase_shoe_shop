import 'package:app/pages/home_page.dart';
import 'package:app/pages/login_or_signup.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/sign_up_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if (snapshot.hasData) {
                return HomePage(user: snapshot.data!);
              } else {
                return const LoginAndSignUp();
              }
            }
          }),
    );
  }
}
