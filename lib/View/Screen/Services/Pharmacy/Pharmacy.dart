import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Widget/services/Pharmacy/ListPharmacy.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    
    Get.put(PharmacyControllerImp());
    return GetBuilder<PharmacyControllerImp>(
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
                  titleappbar: "find Drugs .....",
                  onPressedicon: () {},
                  onPressedsearch: () {},
                ),
                SizedBox(height: 10,),
                ListCategoriesPharmacy(),
                ListDrugs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
