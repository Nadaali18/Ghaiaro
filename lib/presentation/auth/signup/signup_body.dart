import 'package:flutter/material.dart';
import 'package:ghaiaro/presentation/auth/widgets/header.dart';
import 'package:ghaiaro/presentation/auth/widgets/pass_text_field.dart';
import 'package:ghaiaro/presentation/auth/widgets/text_field.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children:[
          Header(text: 'أنشئ حسابك وابدأ التسوق بسهولة'),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height:30),
                    CustomTextField(label: 'اسم المستخدم',icon: Icons.person,),
                    CustomTextField(label: 'البريد الالكتروني', icon: Icons.email),
                    PassTextField(labelText: 'كلمه السر'),
                    PassTextField(labelText: 'تأكيد كلمه السر'),
                    
                  ],
                ),
              ),
            )
            ),
        ],
      ),
    );
  }
}