import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercy_touch/Controller/OnBoarding_controller.dart';
import 'package:mercy_touch/Core/Constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: double.infinity,
        splashColor: AppColor.splash_color,
        color: AppColor.primary_color,
        textColor: AppColor.white_color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(
          vertical: 13,
        ),

        onPressed: () {
          controller.next();
        },
        child: Text("Continue_Button".tr,style: Theme.of(context).textTheme.bodyLarge,),
        
      ),
    );
  }
}
