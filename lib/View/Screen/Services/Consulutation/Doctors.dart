import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Widget/services/Consultation/ListDoctorsview.dart';

class Doctors extends GetView<DoctorsControllerImp> {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DoctorsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              titleappbar: 'salam',
            ),
            ListCategoriesDoctors(),
            GetBuilder<DoctorsControllerImp>(
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.Doctor.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListDoctorsView(
                      doctorsModel:
                          DoctorsModel.fromJson(controller.Doctor[index]),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}