import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/helpers/colors.dart';

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
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
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
