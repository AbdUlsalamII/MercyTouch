import 'package:mercy_touch/Core/app_export.dart';


abstract class TestHomeController extends GetxController {
  initialData();
  getData();
  changeService(int currentservice);
}

class TestHomeControllerImp extends TestHomeController {
  MyServices myServices = Get.find();
  HomeData homedata = HomeData(Get.find());

  int currentservice = 0;

  //* LIST
  List Services = [];

  List<Widget> ServicesPage = [
    const MedicalGuide(),
    const Consultation(),
    const Laboratory(),
    const Pharmacy(),
  ];

  late StatusRequest statusRequest;
  String? username;
  int? userid;

  @override
  void onInit() {
    getData();
    initialData();
    
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
    var response = await homedata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        Services.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  changeService(int i) {
    currentservice = i;
    update();
  }
}
