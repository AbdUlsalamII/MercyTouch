import 'package:mercy_touch/Controller/Services/MedicalGuide/MedicalGuideElements_controller.dart';
import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Widget/services/MedicalGuide/ListCategoriesElements.dart';
import 'package:mercy_touch/View/Widget/services/MedicalGuide/ListMedicalGuideElementsView.dart';

class MedicalGuideElements extends StatelessWidget {
  const MedicalGuideElements({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MedicalGuideElementsControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white_color,
      body: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            //!--- Search bar & Notification ---
            CustomAppBar(
              titleappbar: "find ele .....",
              onPressedicon: () {},
              onPressedsearch: () {},
            ),
            //!
            ListCategoriesElements(),
            //!
            GetBuilder<MedicalGuideElementsControllerImp>(
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (BuildContext context, index) {
                      return ListMedicalGuideElementsView(
                          medicalGuideModel: MedicalGuideModel.fromJson(
                              controller.MGelements[index]));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
