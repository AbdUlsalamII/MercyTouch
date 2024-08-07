import 'package:mercy_touch/Core/app_export.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp Controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
        backgroundColor: AppColor.white_color,
        body: Container(
          padding: EdgeInsets.all(
            15,
          ),
          margin: EdgeInsets.only(top: 100),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70),
                Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: AppColor.primary_color,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Congratulations".tr,
                    style:
                        TextStyle(fontSize: 28, color: AppColor.primary_color)),
                SizedBox(
                  height: 15,
                ),
                Text("changed successfully".tr,
                    style:
                        TextStyle(fontSize: 18, color: AppColor.primary_color)),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: "Go To Login_Button".tr,
                    onPressed: () {
                      Controller.goToPageLogin();
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
        ));
  }
}
