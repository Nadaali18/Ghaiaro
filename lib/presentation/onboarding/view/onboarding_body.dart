import 'package:flutter/material.dart';
import 'package:ghaiaro/Core/Routes/routes.dart';
import 'package:ghaiaro/Core/helpers/colors.dart';
import 'package:ghaiaro/Core/widgets/custom_text.dart';
import 'package:ghaiaro/presentation/onboarding/widgets/dot.dart';
import 'package:go_router/go_router.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  
  final PageController controller = PageController();
  int currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/onboarding1.png",
      "text": "مرحباً بك فى غيارو"
    },
    {
      "image": "assets/images/onboarding2.png",
      "text": "غيارو هو تطبيق مبتكر وفريد\n متخصص في قطع غيار السيارات والاكسسورات"
    },
    {
      "image": "assets/images/onboarding3.png",
      "text": "ابحث بسهولة عن قطع الغيار\n الأصلية والمناسبة لسيارتك"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: controller,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    onboardingData[index]["image"]!,
                    height: 300,
                    width: 300,
                  ),
                  const SizedBox(height: 30),
                  CustomText(
                    onboardingData[index]["text"]!,
                    textdirection: TextAlign.center,
                    fontSize: 24,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: List.generate(
                    onboardingData.length,
                    (index) => Dot(index: index,currentPage: currentPage,),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentPage == onboardingData.length - 1) {
                          context.go(Routes.signUp); 
                        } else {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: CustomText(
                        currentPage == onboardingData.length - 1
                            ? "ابدأ الآن"
                            : "التالي",
                      ),
                      
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
    );
  }
}
