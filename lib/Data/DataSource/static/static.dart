import 'package:mercy_touch/Core/app_export.dart';

// ignore: non_constant_identifier_names
List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "OnBoardingOne_Title".tr,
      subtitle: "OnBoardingOne_SubTitle".tr,
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "OnBoardingTwo_Title".tr,
      subtitle: "OnBoardingTWo_SubTitle".tr,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "OnBoardingThree_Title".tr,
      subtitle: "OnBoardingThree_SubTitle".tr,
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(
      title: "OnBoardingFour_Title".tr,
      subtitle: "OnBoardingFour_SubTitle".tr,
      image: AppImageAsset.onBoardingImageFour),
];

final List<Service> services = [
  Service('Consultation', '${AppRoute.Consultation}', "${AppImageAsset.consultation}"),
  Service('Laboratory', '${AppRoute.Laboratory}', "${AppImageAsset.laboratory}"),
  Service('Pharmacy', '${AppRoute.Pharmacy}', "${AppImageAsset.pharmacy}"),
  Service('MedicalGuide', '${AppRoute.MedicalGuide}', "${AppImageAsset.MG}"),
];
