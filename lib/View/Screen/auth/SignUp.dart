import 'package:mercy_touch/Core/app_export.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpcontrollerTmp());
    return Scaffold(
      backgroundColor: AppColor.white_color,
      // ignore: deprecated_member_use
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpcontrollerTmp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest!,
                widget: Container(
                  padding: EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 0),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        CustomTextTitleAuth(
                          title: "Welcome".tr,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomTextSubTitleAuth(
                          subtitle: "SignUp_SubTitle".tr,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        ListView(
                          shrinkWrap: true,
                          children: [
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 30, "username");
                              },
                              hinttext: "Enter your Full Name".tr,
                              icondata: Icons.person_2_outlined,
                              // labeltext: "Name".tr,
                              mycontroller: controller.username,
                              datatype: TextInputType.name,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 30, "email");
                              },
                              hinttext: "InputEmail".tr,
                              icondata: Icons.email_outlined,
                              // labeltext: "Email".tr,
                              mycontroller: controller.email,
                              datatype: TextInputType.emailAddress,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 30, "password");
                              },
                              hinttext: "InputPassword".tr,
                              icondata: Icons.remove_red_eye_outlined,
                              // labeltext: "Password".tr,
                              mycontroller: controller.password,
                              datatype: TextInputType.text,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 30, "mobile number");
                              },
                              hinttext: "Enter your mobile Number".tr,
                              icondata: Icons.phone_android_rounded,
                              // labeltext: "Mobile Number".tr,
                              mycontroller: controller.phone,
                              datatype: TextInputType.phone,
                            ),
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 30, "date of birth");
                              },
                              hinttext: "Day/Month/Year".tr,
                              icondata: Icons.lock_outline_rounded,
                              // labeltext: "Date Of Birth".tr,
                              mycontroller: controller.date_of_birth,
                              datatype: TextInputType.datetime,
                            ),
                            PrimaryButton(
                              text: "SignUp".tr,
                              onPressed: () {
                                controller.signUp();
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CustomGoToSignUpOrSignIn(
                              text_one: " already have an account? ".tr,
                              text_two: "Login_Title".tr,
                              onTap: () {
                                controller.goToLogin();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          )),
    );
  }
}
