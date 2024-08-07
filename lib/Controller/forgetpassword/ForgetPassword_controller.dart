import 'package:mercy_touch/Core/app_export.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  StatusRequest? statusRequest = StatusRequest.none;

  late TextEditingController email;

  @override
  checkEmail() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          //data.addAll(response['data']);
          Get.offNamed(AppRoute.verifiyCode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Email  Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
