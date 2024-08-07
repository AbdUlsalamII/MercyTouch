import 'package:mercy_touch/Core/app_export.dart'; 

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LogincontrollerTmp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassword = true;

  MyServices myServices = Get.find();

  StatusRequest? statusRequest = StatusRequest.none;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          //data.addAll(response['data']);
          myServices.sharedPreferences
              .setInt("id", response['data']['users_id']);
          myServices.sharedPreferences
              .setString("username", response['data']['users_name']);
          myServices.sharedPreferences
              .setString("email", response['data']['users_email']);
          myServices.sharedPreferences
              .setInt("phone", response['data']['users_phone']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoute.Home);
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: "Email or password not correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print('error');
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.SginUp);
  }

  @override
  void onInit() {
    /*FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });*/
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
