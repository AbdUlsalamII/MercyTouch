import 'package:mercy_touch/Core/app_export.dart'; 

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return  Scaffold(
          backgroundColor: AppColor.white_color,
          
          body: GetBuilder<ResetPasswordControllerImp>(
            builder: (controller) => HandlingDataRequest(
                 statusRequest: controller.statusRequest!,
                widget:Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          CustomTextTitleAuth(
                            title: "New Password".tr,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomTextSubTitleAuth(
                            subtitle: "Please Enter New Password".tr,
                          ),
                          SizedBox(
                            height: 35,
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
                              return validInput(val!, 5, 30, "password");
                            },
                            hinttext: "Re Enter your Password".tr,
                            icondata: Icons.remove_red_eye_outlined,
                            // labeltext: "Password".tr,
                            mycontroller: controller.repassword,
                            datatype: TextInputType.text,
                          ),
                          PrimaryButton(
                            text: "Save_Button".tr,
                            onPressed: () {
                              controller.goToSuccessReSetPassword();
                            },
                          ),
                        ],
                      ),
                    ),
                  )),
          ));
  }
}
