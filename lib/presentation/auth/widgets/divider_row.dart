import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Row(
          children: [
            Expanded(child: Divider(color: primaryColor,)),
            SizedBox(width: 8,),
            CustomText('أو',fontFamily: textFont,fontWeight: FontWeight.w500,fontSize: 14,),
            SizedBox(width: 8,),
            Expanded(child: Divider(color: primaryColor,)),
          ],
        ),
      ),
    );
  }
}