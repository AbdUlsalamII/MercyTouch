import 'package:mercy_touch/Core/app_export.dart';

class ListCategoriesPharmacy extends GetView<PharmacyControllerImp> {
  const ListCategoriesPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: controller.drugsCat.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoriesPh(
            
            i: index,
            pharmacyCategoriesModel:
                PharmacyCategoriesModel.fromJson(controller.drugsCat[index]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}

class CategoriesPh extends GetView<PharmacyControllerImp> {
  final PharmacyCategoriesModel pharmacyCategoriesModel;
  final int? i;
  const CategoriesPh({
    super.key,
    required this.pharmacyCategoriesModel,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToDrugs(controller.drugsCat,i!,pharmacyCategoriesModel.drugsCatId.toString());
        },
        child: Container(
            padding: EdgeInsets.all(16.0), // Padding داخل الإطار
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
              ), // حدود الإطار
              borderRadius: BorderRadius.circular(10), // انحناء زوايا الإطار
            ),
            child: Text(
              textAlign: TextAlign.center,
              "${pharmacyCategoriesModel.drugsCatName}",
            )));
  }
}
