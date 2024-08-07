import 'package:mercy_touch/Controller/Services/Pharmacy/Drugs_controller.dart';
import 'package:mercy_touch/Core/app_export.dart';

class ListCategoriesDrugs extends GetView<DrugsControllerImp> {
  const ListCategoriesDrugs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
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

class CategoriesPh extends GetView<DrugsControllerImp> {
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
          // controller.goToDrugs(controller.drugsCat,i!);
          controller.changeCat(
              i!, pharmacyCategoriesModel.drugsCatId.toString());
        },
        child: Column(
          children: [
            GetBuilder<DrugsControllerImp>(
              builder: (controller) => Container(
                  decoration: controller.selectedCat == i
                      ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: AppColor.primary_color),
                          ),
                        )
                      : null,
                  child: Text(
                    textAlign: TextAlign.center,
                    "${pharmacyCategoriesModel.drugsCatName}",
                  )),
            )
          ],
        ));
  }
}
