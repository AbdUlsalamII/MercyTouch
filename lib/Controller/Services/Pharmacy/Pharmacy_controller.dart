import 'package:mercy_touch/Core/app_export.dart';

abstract class PharmacyController extends GetxController {
  initialData();
  getData();
  goToDrugs(List drugsCat,int selectedCat,String categoryid);
}

class PharmacyControllerImp extends PharmacyController {
  MyServices myServices = Get.find();
  PharmacyData pharmacyData = PharmacyData(Get.find());

  List drugsCat = [];
  List drugs = [];

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
    var response = await pharmacyData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        drugsCat.addAll(response['Drugs_cat']);
        drugs.addAll(response['Drugs']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToDrugs(drugsCat, selectedCat,categoryid) {
    Get.toNamed(AppRoute.Drugs, arguments: {
      "drugsCat" : drugsCat,
      "selectedCat" : selectedCat,
      "catid": categoryid      
    });
  }
}
