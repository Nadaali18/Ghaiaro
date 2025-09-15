import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key,required this.questionT,required this.responsT});
final String questionT;
final String responsT;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         CustomText(questionT,fontFamily: textFont,fontSize: 15,fontWeight: FontWeight.w600,),
         InkWell(
          child: CustomText(responsT,color: primaryColor,fontFamily: textFont,fontSize: 15,fontWeight: FontWeight.w600,),
         )
      ],
    );
  }
}