import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key,required this.image,required this.text});
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(image), 
            ),
            SizedBox(height: 10,),
            CustomText(text, fontSize: 20, fontWeight: FontWeight.w600,fontFamily: textFont,),
        ],
      ),
    );
  }
}