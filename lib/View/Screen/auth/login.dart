import 'package:mercy_touch/Core/app_export.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    //* Controller Injection
    Get.put(LogincontrollerTmp());
    //!------------------------------
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.white_color,
          //* Title ------------
          // ignore: deprecated_member_use
          body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<LogincontrollerTmp>(
              builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest!,
                widget: Container(
                  padding: EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 0),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        CustomTextTitleAuth(
                          title: "Welcome".tr,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        //* Subtitle -----------------
                        CustomTextSubTitleAuth(
                          subtitle: "Login_SubTitle".tr,
                        ),
                        SizedBox(
                          height: 35,
                        ),

                        ListView(
                          shrinkWrap: true,
                          children: [
                            //* Text Form Field (E-mail) ---------------
                            CustomTextFormAuth(
                              valid: (val) {
                                return validInput(val!, 5, 30, "email");
                              },
                              hinttext: "InputEmail".tr,
                              icondata: Icons.email_outlined,
                              mycontroller: controller.email,
                              datatype: TextInputType.emailAddress,
                            ),
                            //* Text Form Field (Password) ---------------
                            GetBuilder<LogincontrollerTmp>(
                              builder: (controller) => CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 8, 100, "password");
                                },
                                obscuretext: controller.isShowPassword,
                                onTapIcon: () {
                                  controller.showPassword();
                                },
                                hinttext: "InputPassword".tr,
                                icondata: Icons.remove_red_eye_outlined,
                                mycontroller: controller.password,
                                datatype: TextInputType.text,
                              ),
                            ),
                            //* button (Forget Password) ---------------
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: CustomForgetTextAuth(
                                onTap: () {
                                  controller.goToForgetPassword();
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            //* Button (Go To) ------------
                            PrimaryButton(
                              text: "Login_Button".tr,
                              onPressed: () {
                                controller.login();
                              },
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            //* button (Sgin Up) ---------------
                            CustomGoToSignUpOrSignIn(
                              text_one: "Don't have account".tr,
                              text_two: "SignUp".tr,
                              onTap: () {
                                controller.goToSignUp();
                              },
                            ),
                            const SizedBox(height: 20),
                            const DividerRow(),
                            const SizedBox(height: 32),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: CustomSocialButton(
                                    imagePath: AppImageAsset.facebook,
                                    onTap: () {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: CustomSocialButton(
                                    imagePath: AppImageAsset.google,
                                    onTap: () {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: CustomSocialButton(
                                    imagePath: AppImageAsset.apple,
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
