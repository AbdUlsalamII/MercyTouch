import 'package:mercy_touch/Core/app_export.dart';

abstract class MedicalGuideController extends GetxController {
  initialData();
  getData();
  goToMGElements(List medicalguideCat,int selectedCat,String categoryid);
}

class MedicalGuideControllerImp extends MedicalGuideController {
  MyServices myServices = Get.find();
  MedicalGuideData MGdata = MedicalGuideData(Get.find());

  List medicalguideCat = [];
  List medicalguideElements = [];

  late StatusRequest statusRequest;

  String? username;
  int? userid;

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }

  @override
  initialData() {
    userid = myServices.sharedPreferences.getInt("id");
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await MGdata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        medicalguideCat.addAll(response['m_guide_cat']);
        medicalguideElements.addAll(response['m_guide_elements']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToMGElements( medicalguideCat, selectedCat,categoryid) {
    Get.toNamed(AppRoute.MedicalGuideElements,arguments: {
      "medicalguideCat" : medicalguideCat,
      "selectedCat" : selectedCat,
            "catid": categoryid      

    });
  }
}
