import 'package:mercy_touch/Core/app_export.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.bg,
        // ignore: deprecated_member_use
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Center(
            child: Column(
              children: [
                Spacer(),
                Expanded(
                  flex: 3,
                  child: CustomSliderOnBoarding(),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CustomDotControllerOnBoarding(),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: CustomButtonOnBoarding()),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
