import 'package:mercy_touch/Core/app_export.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
  goToService(Service service);
  // goToDoctors(List categories, int selectedCat);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  HomeData homedata = HomeData(Get.find());
  
  List doctors = [];
  List Laboratory = [];

  late StatusRequest statusRequest;
  String? username;
  int? userid;

  @override
  initialData() {
    userid = myServices.sharedPreferences.getInt("id");
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        doctors.addAll(response['doctors']);
        Laboratory.addAll(response['Labs']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }
  
  @override
  goToService(service) {
     Get.toNamed(service.route);
  }
}
