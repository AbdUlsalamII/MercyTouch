 import 'package:mercy_touch/Core/app_export.dart'; 

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpcontrollerTmp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController date_of_birth;

  StatusRequest? statusRequest = StatusRequest.none;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
          username.text, email.text, password.text, phone.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          //data.addAll(response['data']);
          Get.offNamed(AppRoute.VerifiyCodeSignUp , arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Phone Number or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("not valid");
    }
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    date_of_birth = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    date_of_birth.dispose();
    super.dispose();
  }
}
