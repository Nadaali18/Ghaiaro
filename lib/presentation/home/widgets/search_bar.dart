import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/helpers/fonts.dart';
import 'package:ghaiaro/core/widgets/custom_container_shadow.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical:10),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
             Expanded(
               child: CustomContainerShadow(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    cursorColor: primaryColor,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search_rounded, color: primaryColor,),
                      hintText: 'ابحث عن القطعه التي تريدها',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: textFont,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                    ),
                  ),
                ),
                             ),
             ),
             SizedBox(width: 10),
              CustomContainerShadow(
              child: IconButton(
                icon: Icon(Icons.filter_list, color: primaryColor,),
                onPressed: () {
                } ),
              ),
          ],
          ),
      ),
    );
  }
}