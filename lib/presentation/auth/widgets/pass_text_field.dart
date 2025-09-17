import 'package:flutter/material.dart';
import 'package:ghaiaro/core/helpers/colors.dart';
import 'package:ghaiaro/core/widgets/custom_container_shadow.dart';

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
        child: CustomContainerShadow(
          height: 55,
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
