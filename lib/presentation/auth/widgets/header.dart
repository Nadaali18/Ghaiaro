import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60,bottom: 50),
      child: Column(
        children: [
          CustomText(
            '!مرحباً',
            fontFamily: textFont,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
            SizedBox(height: 10,),
            CustomText(
              text,
              fontFamily: textFont,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              )
        ],
      ),
    );
  }
}