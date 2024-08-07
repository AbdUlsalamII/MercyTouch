import 'package:mercy_touch/Core/app_export.dart';

abstract class ResetPasswordController extends GetxController {
  reSetPassword();
  goToSuccessReSetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  String? email;

  late TextEditingController password;
  late TextEditingController repassword;
  StatusRequest? statusRequest = StatusRequest.none;

  @override
  reSetPassword() {}

  @override
  goToSuccessReSetPassword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: "warning", middleText: "Password Not Matching");
    }
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          //data.addAll(response['data']);
          Get.offNamed(AppRoute.SuccessResetPassword);
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not valid");
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
