import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/Routes/routes.dart';
import 'package:ghaiaro/Core/helpers/colors.dart';
import 'package:ghaiaro/Core/widgets/custom_text.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => SplashScreenBodyState();
}

class SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController imageController;
  late Animation<Offset> imageSlide;
  late Animation<double> imageFade;

  late AnimationController textController;
  late Animation<Offset> textSlide;
  late Animation<double> textFade;

  @override
  void initState() {
    super.initState();

    imageController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    imageSlide =
        Tween<Offset>(begin: const Offset(1.5, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: imageController, curve: Curves.easeOut),
    );
    imageFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: imageController, curve: Curves.easeIn),
    );

    textController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    textSlide =
        Tween<Offset>(begin: const Offset(-1.5, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: textController, curve: Curves.easeOut),
    );
    textFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: textController, curve: Curves.easeIn),
    );

    imageController.forward();
    textController.forward();
   
   Timer(const Duration(seconds: 3), () {
      if (mounted) {
        context.go(Routes.onboarding);
      }
    });
  }

  @override
  void dispose() {
    imageController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: imageFade,
              child: SlideTransition(
                position: imageSlide,
                child: Image.asset(
                  "assets/images/GHlogo.png",
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            FadeTransition(
              opacity: textFade,
              child: SlideTransition(
                position: textSlide,
                child: const CustomText(
                  "غيارو",
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  color: splashTextColor,
                 
                ),
              ),
            ),
          ],
        ),
    );
  }
}
