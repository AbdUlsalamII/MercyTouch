import 'package:mercy_touch/Core/app_export.dart';

class CustomSliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Center(
              child: Column(
                children: [
                  Image.asset(
                    onBoardingList[i].image!,
                    height: Get.width / 1.6,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      onBoardingList[i].title!,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].subtitle!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ));
  }
}
