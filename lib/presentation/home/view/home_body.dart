import 'package:flutter/material.dart';
import 'package:ghaiaro/presentation/home/widgets/animated_container.dart';
import 'package:ghaiaro/presentation/home/widgets/search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSearchBar(),
          AnimatedAdContainer(),
        ],
      ),
    );
  }
}