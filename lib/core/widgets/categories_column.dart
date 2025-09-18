import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/category_container.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';

class CategoriesColumn extends StatelessWidget {
  const CategoriesColumn({super.key,required this.category});
final List category;
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: CustomText('الفئات', fontFamily: titleFont ,fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15,),
        SizedBox(
          height:130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context,index)=> CategoryContainer(
              image: category[index]['image'], 
              text: category[index]['text']),
          ),
        ),
      ],
    );
  }
}