 import 'package:mercy_touch/Core/app_export.dart'; 


abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController = PageController();
  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = pageController;
    super.onInit();
  }
}
