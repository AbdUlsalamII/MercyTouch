// import 'package:mercy_touch/Core/app_export.dart';

// class ListCategoriesDoctors extends GetView<DoctorsControllerImp> {
//   const ListCategoriesDoctors({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       child: ListView.separated(
//         itemCount: controller.categories.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Categories(
//             i: index,
//             categoriesModel:
//                 Categoriesmodel.fromJson(controller.categories[index]),
//           );
//         },
//         separatorBuilder: (context, index) => SizedBox(
//           width: 10,
//         ),
//       ),
//     );
//   }
// }

// class Categories extends GetView<DoctorsControllerImp> {
//   final Categoriesmodel categoriesModel;
//   final int? i;
//   const Categories({
//     super.key,
//     required this.categoriesModel,
//     required this.i,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // controller.goToDoctors(controller.categories, i!);
//         controller.changeCat(i!);
//       },
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             GetBuilder<DoctorsControllerImp>(
//               builder: (controller) => Container(
//                 padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
//                 decoration: controller.selectedCat == i
//                     ? BoxDecoration(
//                         border: Border(
//                             bottom: BorderSide(
//                                 width: 3, color: AppColor.primary_color)))
//                     : null,
//                 child: Text(
//                   "${categoriesModel.categoriesName}",
//                   style:
//                       TextStyle(fontSize: 20, color: AppColor.grey_text_color),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
