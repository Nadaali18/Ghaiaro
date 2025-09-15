import 'package:flutter/material.dart';

class CustomSocialIcon extends StatelessWidget {
  const CustomSocialIcon({super.key,required this.onTap,required this.image});
final void Function()? onTap;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        focusColor: Colors.white,
        onTap: onTap,
        child: Image.asset(image,height: 40,width: 40,fit: BoxFit.fill,),
      ),
    );
  }
}