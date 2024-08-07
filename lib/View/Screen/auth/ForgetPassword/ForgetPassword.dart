import 'package:mercy_touch/Core/app_export.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        body: GetBuilder<ForgetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest!,
              widget: Container(
                 
                margin: EdgeInsets.symmetric(horizontal: 28,vertical: 70),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      CustomTextTitleAuth(
                        title: "Check Email".tr,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextSubTitleAuth(
                        subtitle: "ForgetPasswordPage_SubTitle".tr,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                       ListView(
                        shrinkWrap: true,
                        children: [
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
                          PrimaryButton(
                            text: "Check_Button".tr,
                            onPressed: () {
                              controller.checkEmail();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ));
  }
}
