import 'package:mercy_touch/Core/app_export.dart';

class ListDrugs extends GetView<PharmacyControllerImp> {
  const ListDrugs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 250,
      child: ListView.builder(
          itemCount: controller.drugs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return DrugsPharmacy(
              pharmacyModel: PharmacyModel.fromJson(controller.drugs[i]),
            );
          }),
    );
  }
}

class DrugsPharmacy extends StatelessWidget {
  final PharmacyModel pharmacyModel;
  const DrugsPharmacy({super.key, required this.pharmacyModel});

  @override
  Widget build(BuildContext context) {
    return PharmacyCard(
      drugsName: "${pharmacyModel.drugsName}",
      capacity: pharmacyModel.drugsCapacity ?? 0,
      type: "${pharmacyModel.drugsType}",
      price: "${pharmacyModel.drugsCost}",
      imagePath: "${AppLink.imagepath}/${pharmacyModel.drugsImage}",
    );
  }
}
