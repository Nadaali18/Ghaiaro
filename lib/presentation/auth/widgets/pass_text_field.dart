import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';

class PassTextField extends StatefulWidget {
  const PassTextField({super.key,required this.labelText});
final String labelText;
  @override
  State<PassTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  bool obscureText = true; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
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
            obscureText: obscureText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: TextStyle(
                color: Colors.grey[700],
                fontSize: 14,
              ),
              prefixIcon: Icon(Icons.lock_outline, color: Colors.grey[700]),
              suffixIcon: IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey[700],
                ),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText; 
                  });
                },
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
