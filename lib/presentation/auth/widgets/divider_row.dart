import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Row(
        children: [
          Divider(color: primaryColor,),
          SizedBox(width: 8,),
          CustomText('أو',fontFamily: textFont,fontWeight: FontWeight.w500,fontSize: 14,),
          SizedBox(width: 8,),
          Divider(color: primaryColor,),
        ],
      ),
    );
  }
}