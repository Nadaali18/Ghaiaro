import 'package:flutter/material.dart';
import 'package:ghaiaro/presentation/auth/widgets/custom_social_icon.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CustomSocialIcon(onTap: (){}, image: 'assets/images/google.png'),
           CustomSocialIcon(onTap: (){}, image: 'assets/images/facebook.png'),
           CustomSocialIcon(onTap: (){}, image: 'assets/images/twitter.png'),
        ],
      ),
    );
  }
}