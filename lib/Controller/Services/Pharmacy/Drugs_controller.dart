import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/Data/DataSource/remote/services/pharmacy/drugs_data.dart';

abstract class DrugsController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getDrugs(String categoryid);
}

class DrugsControllerImp extends DrugsController {
  DrugsData drugsData = DrugsData(Get.find());

  List Drugs = [];
  List drugsCat = [];
  int? selectedCat;
  String? catid;

  late StatusRequest statusRequest;
  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    drugsCat = Get.arguments['drugsCat'];
    selectedCat = Get.arguments['selectedCat'];
    catid = Get.arguments['catid'];
    getDrugs(catid!);
    update();
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getDrugs(catid!);
    update();
  }

  @override
  getDrugs(categoryid) async {
    statusRequest = StatusRequest.loading;
    var response = await drugsData.getData(catid!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        Drugs.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
