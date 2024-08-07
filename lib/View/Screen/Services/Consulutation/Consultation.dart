import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Widget/services/Consultation/ListCategoriesConsultation.dart';
import 'package:mercy_touch/Workspace/CategoryDetails.dart';

class Consultation extends StatelessWidget {
  const Consultation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ConsultationControllerImp());
    return GetBuilder<ConsultationControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                //!--- Search bar & Notification ---
                CustomAppBar(
                  titleappbar: "find doctor ",
                  onPressedicon: () {},
                  onPressedsearch: () {},
                ),
                ListCategoriesConsultation(),

                ListDoctors(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
