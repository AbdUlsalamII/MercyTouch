import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Widget/services/MedicalGuide/ListMedicalGuide.dart';

class MedicalGuide extends StatelessWidget {
  const MedicalGuide({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MedicalGuideControllerImp());
    return GetBuilder<MedicalGuideControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Scaffold(
          body: Container(
            color: AppColor.white_color,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                //!--- Search bar & Notification ---
                CustomAppBar(
                  titleappbar: "find Medical Guide .....",
                  onPressedicon: () {},
                  onPressedsearch: () {},
                ),
                ListCategoriesMedicalguide(),
                // Container(child: ListView.builder(itemBuilder: itemBuilder),)
                ListMedicalGuide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
