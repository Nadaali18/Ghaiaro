import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/helpers/colors.dart';
import 'package:ghaiaro/Core/widgets/custom_text.dart';
import 'package:ghaiaro/core/routes/routes.dart';
import 'package:ghaiaro/presentation/auth/widgets/bottom_row.dart';
import 'package:ghaiaro/presentation/auth/widgets/custom_elevated_button.dart';
import 'package:ghaiaro/presentation/auth/widgets/divider_row.dart';
import 'package:ghaiaro/presentation/auth/widgets/header.dart';
import 'package:ghaiaro/presentation/auth/widgets/pass_text_field.dart';
import 'package:ghaiaro/presentation/auth/widgets/social_icons.dart';
import 'package:ghaiaro/presentation/auth/widgets/text_field.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children:[
          Header(text: 'سجّل دخولك وابدأ التسوق'),
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
                    CustomTextField(label: 'البريد الالكتروني', icon: Icons.email_outlined),
                    PassTextField(labelText: 'كلمه السر'),
                    CustomElevatedButton(text: 'تسجيل الدخول'),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: InkWell(
                        onTap: () {
                        },
                        child: CustomText(
                          'نسيت كلمه السر؟',fontSize: 14,fontWeight: FontWeight.w500,color: primaryColor,)),
                    ),
                    DividerRow(),
                    SocialIcons(),
                    BottomRow(questionT: 'ليس لديك حساب؟ ', responsT: 'أنشئ حساب جديد',onTap: () => context.go(Routes.signUp),),
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