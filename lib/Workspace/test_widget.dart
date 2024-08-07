// import 'package:mercy_touch/Controller/Services_MT/test_Home_controller.dart';
// import 'package:mercy_touch/Core/app_export.dart';

import 'package:mercy_touch/Core/app_export.dart';

class TopCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final double rating;
  final String imagePath;
  // final OnTap onTap;
  const TopCard(
      {super.key,
      required this.doctorName,
      required this.specialty,
      required this.rating,
      required this.imagePath,
      // required this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        height: 260,
        child: InkWell(
          onTap: (){},
          child: Card(
            color: AppColor.bg,
              elevation: 7,
              shadowColor: AppColor.primary_color,
              margin: EdgeInsets.all(16.0),
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.network(
                              imagePath,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            doctorName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),                         
                        ],
                      )),
                    ],
                  ))),
        ));
  }
}
























// class ListCategoriesHomeTest extends GetView<HomeControllerImp> {
//   const ListCategoriesHomeTest({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 120,
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

// class Categories extends GetView<HomeControllerImp> {
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
//          controller.changeService(i!);
//       },
//       child: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 color: AppColor.primary_color.withOpacity(0.05),
//                 borderRadius: BorderRadius.circular(10)),
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 100,
//             width: 100,
//             child: SvgPicture.network(
//               "${AppLink.imageCategories}/${categoriesModel.categoriesImage}",
//               // ignore: deprecated_member_use
//               color: AppColor.primary_color,
//             ),
//           ),
//           Text(
//             "${categoriesModel.categoriesName}",
//             style: Theme.of(context).textTheme.headlineSmall,
//           ),
//         ],
//       ),
//     );
//   }
// }
