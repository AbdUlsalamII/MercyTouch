import 'package:mercy_touch/Core/app_export.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verificationCode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());

  VerifiyCodeSignUpData verifiyCodeSignUpData =
      VerifiyCodeSignUpData(Get.find());

  String? email;

  StatusRequest? statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifiyCodeSignUpData.postData(email!, verificationCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoute.SuccessSignUp);
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "Verify Code Note correct");
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
