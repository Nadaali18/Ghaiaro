import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/presentation/auth/login/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body:LoginBody(),);
  }
}