import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/widgets/custom_container_shadow.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.icon
  });
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
      child: Directionality(
        textDirection: TextDirection.rtl, 
        child: CustomContainerShadow(
          height: 55,
          child: TextFormField(
            cursorColor: primaryColor,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(icon, color: Colors.grey[700],),
              labelText: label,
              labelStyle: TextStyle(
                color: Colors.grey[700],
                fontSize: 14,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            ),
          ),
        ),
      ),
    );
  }
}
