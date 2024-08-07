import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/Data/DataSource/remote/services/medicalguide/medicalguideelements-data.dart';

abstract class MedicalGuideElementsController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getMedicalGuideElements(String categoryid);
}

class MedicalGuideElementsControllerImp extends MedicalGuideElementsController {
  MedicalGuideElementsData medicalGuideElementsData =
      MedicalGuideElementsData(Get.find());
      
  List MGelements = [];
  List medicalguideCat = [];
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
    medicalguideCat = Get.arguments['medicalguideCat'];
    selectedCat = Get.arguments['selectedCat'];
    catid = Get.arguments['catid'];
    getMedicalGuideElements(catid!);
    update();
  }

  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getMedicalGuideElements(catid!);
    update();
  }

  @override
  getMedicalGuideElements(categoryid) async {
    statusRequest = StatusRequest.loading;
    var response = await medicalGuideElementsData.getData(catid!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        MGelements.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
