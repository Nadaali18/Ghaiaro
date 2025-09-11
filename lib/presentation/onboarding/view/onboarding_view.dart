import 'package:flutter/material.dart';
import 'package:ghaiaro/core/routes/routes.dart';
import 'package:ghaiaro/presentation/onboarding/view/onboarding_body.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: ()=>context.go(Routes.signUp), 
            icon: Icon(Icons.skip_previous_outlined,)),
            SizedBox(width: 20,),
        ],
      ),
      body: OnboardingBody(),
    );
  }
}