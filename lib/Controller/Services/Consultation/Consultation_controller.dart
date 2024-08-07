import 'package:mercy_touch/Core/app_export.dart';

abstract class ConsultationController extends GetxController {
  initialData();
  getData();
  goToDoctors(List doctorsCat, int selectedCat, String categoryid);
}

class ConsultationControllerImp extends ConsultationController {
  MyServices myServices = Get.find();
  ConsultationData consultationData = ConsultationData(Get.find());

  List doctorsCat = [];
  List doctors = [];

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
    var response = await consultationData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        doctorsCat.addAll(response['doctors_cat']);
        doctors.addAll(response['doctors']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToDoctors(doctorsCat, selectedCat, categoryid) {
    Get.toNamed(AppRoute.Doctors, arguments: {
      "doctorsCat": doctorsCat,
      "selectedCat": selectedCat,
      "catid": categoryid
    });
  }
}
