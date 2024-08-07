import 'package:mercy_touch/Core/app_export.dart';

class VerifiyCodeSignUp extends StatelessWidget {
  const VerifiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return BackgroundImageContainer(
      imagePath: AppImageAsset.bg_VerifiyCodetwo,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest!,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 150, horizontal: 40),
                child: Form(
                  child: ListView(
                    children: [
                      CustomTextTitleAuth(
                        title: "Check Code".tr,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextSubTitleAuth(
                        subtitle: "VerifiyPage_SubTitle".tr,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      OtpTextField(
                        enabledBorderColor: AppColor.primary_color,
                        focusedBorderColor: AppColor.selecter,
                        fieldWidth: 50,
                        borderRadius: BorderRadius.circular(20),
                        numberOfFields: 5,
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        clearText: true,
                        textStyle: TextStyle(
                          color: AppColor.primary_color,
                          fontSize: 20,
                        ),
                        cursorColor: AppColor.black_color,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          controller.goToSuccessSignUp(verificationCode);
                        }, // end onSubmit
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
