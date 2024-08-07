import 'package:mercy_touch/Core/app_export.dart';

class VerifiyCode extends StatelessWidget {
  const VerifiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllerImp());
    return BackgroundImageContainer(
      imagePath: AppImageAsset.bg_VerifiyCodetwo,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: GetBuilder<VerifyCodeControllerImp>(
            builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest!,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 150, horizontal: 40),
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
                      showFieldAsBox: true,
                      clearText: true,
                      textStyle: TextStyle(color: AppColor.primary_color,fontSize: 20,),
                      cursorColor: AppColor.black_color,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        controller.goToResetPassword(verificationCode);
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
