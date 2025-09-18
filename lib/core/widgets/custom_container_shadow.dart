import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';

class CustomContainerShadow extends StatelessWidget {
  const CustomContainerShadow({super.key,this.radius,this.width,this.color,this.height,required this.child,this.padd,this.marg});
final Widget child;
final double? padd;
final double? marg;
final double? height;
final double? width;
final Color? color ;
final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
       padding: EdgeInsets.all(padd??0),
       margin: EdgeInsets.all(marg??0),
              decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(radius??30),
              border: Border.all(color: color ?? Colors.transparent),
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