import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercy_touch/Controller/OnBoarding_controller.dart';
import 'package:mercy_touch/Core/Constant/color.dart';
import 'package:mercy_touch/Data/DataSource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: Duration(milliseconds: 900),
                    width: controller.currentPage == index ? 27 : 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: AppColor.primary_color,
                      borderRadius: BorderRadius.circular(160),
                    ),
                  )),
        ],
      ),
    );
  }
}
