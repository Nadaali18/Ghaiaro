import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/helpers/fonts.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/routes/routes.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';
import 'package:go_router/go_router.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: (){
            context.go(Routes.home);
          }, 
          child: Center(
            child: CustomText(
                text,
                color: Colors.white,
                fontSize: 20,
                fontFamily: textFont,
                fontWeight: FontWeight.w600,
                ))),
      ),
    );
  }
}