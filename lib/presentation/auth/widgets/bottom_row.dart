import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key,required this.questionT,required this.responsT,required this.onTap});
final String questionT;
final String responsT;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CustomText(questionT,fontFamily: textFont,fontSize: 15,fontWeight: FontWeight.w600,),
           SizedBox(width: 5,),
           InkWell(
            onTap: onTap,
            child: CustomText(responsT,color: primaryColor,fontFamily: textFont,fontSize: 15,fontWeight: FontWeight.w600,),
           )
        ],
      ),
    );
  }
}