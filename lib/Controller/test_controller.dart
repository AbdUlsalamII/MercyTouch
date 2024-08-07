import 'package:mercy_touch/Core/app_export.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
