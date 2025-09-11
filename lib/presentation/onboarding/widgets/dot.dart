import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/helpers/colors.dart';

class Dot extends StatelessWidget {
  const Dot({super.key,required this.currentPage,required this.index});
  final int index;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 25 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}