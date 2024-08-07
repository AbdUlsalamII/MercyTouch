import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercy_touch/Core/Constant/routes.dart';
import 'package:mercy_touch/Core/Localization/changelocal.dart';
import 'package:mercy_touch/View/Widget/Language/custombuttonlang.dart';

class Language extends GetView<LocalConroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Custombuttonlang(
              textbutton: "2".tr,
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            Custombuttonlang(
              textbutton: "3".tr,
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
