import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/categories_column.dart';
import 'package:ghaiaro/core/widgets/custom_text.dart';
import 'package:ghaiaro/core/widgets/product_container.dart';
import 'package:ghaiaro/presentation/home/widgets/animated_container.dart';
import 'package:ghaiaro/presentation/home/widgets/search_bar.dart';

class HomeBody extends StatelessWidget {
    HomeBody({super.key});
final List products=[
   {"image":'assets/images/product1.png',"text":'أغطية مقاعد جلد',"description":'(قماش فاخر)',"price":'250\$'},
   {"image":'assets/images/product2.png',"text":'تويوتا هايبرد',"description":'سينرجي درايف: تميز ياباني',"price":'150\$'},
   {"image":'assets/images/product1.png',"text":'أغطية مقاعد جلد',"description":'(قماش فاخر)',"price":'250\$'},
   {"image":'assets/images/product2.png',"text":'تويوتا هايبرد',"description":'سينرجي درايف: تميز ياباني',"price":'150\$'},
];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          AnimatedAdContainer(),
          CategoriesColumn(
            category:[
            {"image":'assets/images/categoryH1.png',"text":'قطع غيار'},
            {"image":'assets/images/categoryH2.png',"text":'إكسسوارات'},
            {"image":'assets/images/categoryH3.png',"text":'فني'},
            {"image":'assets/images/catgoryH4.png',"text":'شات بوت'},
          ]),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: CustomText('المقترحات',fontSize: 25,fontFamily: titleFont,fontWeight: FontWeight.bold,),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.65,
              ), 
            itemCount: products.length,
            itemBuilder: (context,index)=>ProductContainer
            (image: products[index]['image'], text: products[index]['text'], description: products[index]['description'], price: products[index]['price']),
          ),
        ],
      ),
    );
  }
}