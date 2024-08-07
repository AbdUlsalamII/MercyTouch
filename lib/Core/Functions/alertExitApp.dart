import 'package:mercy_touch/Core/app_export.dart';
import 'dart:io';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "warning".tr,
      titleStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,color: AppColor.black_color),
      middleText: "2".tr,
      middleTextStyle: TextStyle(
        fontSize: 18,
        color: AppColor.grey_color,
      ),
      radius: 10,
      backgroundColor: AppColor.white_color,
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      actions: [
        TextButton(
            onPressed: () {
              exit(0);
            },
            child: Text("Yes".tr, style: TextStyle(color: AppColor.primary_color,fontWeight: FontWeight.w800))),
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("No".tr, style: TextStyle(color: AppColor.primary_color,fontWeight: FontWeight.w800))),
      ]);
  return Future.value(true);
}
