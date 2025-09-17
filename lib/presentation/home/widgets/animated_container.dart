import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_container_shadow.dart';

class AnimatedAdContainer extends StatelessWidget {
  const AnimatedAdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerShadow(
      padd: 5,
      marg: 15,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/animatedContainer.png",
              width: 165,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: AnimatedTextKit(
              repeatForever: true,
              pause: Duration(seconds: 3), 
              animatedTexts: [
                TyperAnimatedText(
                  "كل ما تحتاجه لسيارتك\n"
                  "قطع غيار أصلية وبدائل\n"
                  "اقتصادية واكسسوارات\n"
                  "في مكان واحد",
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: textFont,
                  ),
                  textAlign: TextAlign.right,
                  speed: Duration(milliseconds: 100), 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
