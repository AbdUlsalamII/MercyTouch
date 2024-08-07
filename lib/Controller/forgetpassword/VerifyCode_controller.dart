import 'package:mercy_touch/Core/app_export.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String VerifiyCode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());
  StatusRequest? statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToResetPassword(VerifiyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postData(email!, VerifiyCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoute.resetPassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "Verify Code Not correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
