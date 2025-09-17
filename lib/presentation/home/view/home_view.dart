import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/widgets/custom_text.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/presentation/home/view/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Image.asset('assets/images/GHlogo.png'),
          ),
          title: Align(
            alignment: Alignment.centerRight,
            child: CustomText('الصفحة الرئيسية', fontFamily: titleFont, fontWeight: FontWeight.bold,fontSize:25)),
          actions: [
            IconButton(
              icon: Image.asset('assets/images/Vector.png'),
              onPressed: () {
              },
            ),
           SizedBox(width:15),
          ],
        ),
        body: HomeBody(),));
  }
}