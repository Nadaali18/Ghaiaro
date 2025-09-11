import 'package:flutter/material.dart';
import 'package:ghaiaro/Presentation/splash/splash_screen_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}