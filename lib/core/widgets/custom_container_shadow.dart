import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';

class CustomContainerShadow extends StatelessWidget {
  const CustomContainerShadow({super.key,this.width,this.height,required this.child,this.padd,this.marg});
final Widget child;
final double? padd;
final double? marg;
final double? height;
final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
       padding: EdgeInsets.all(padd??0),
       margin: EdgeInsets.all(marg??0),
              decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            child: child,    
          );
  }
}