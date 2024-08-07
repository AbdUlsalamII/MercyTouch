// import 'package:mercy_touch/Core/app_export.dart';
// import 'package:mercy_touch/View/Widget/Doctors/customlistdoctors.dart';
// import 'package:mercy_touch/View/Widget/Doctors/listcategoriesdoctors.dart';

// class Doctors extends StatelessWidget {
//   const Doctors({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     Get.put(DoctorsControllerImp());
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(15),
//         child: GetBuilder<DoctorsControllerImp>(
//           builder: (controller) => HandlingDataView(
//             statusRequest: controller.statusRequest,
//             widget: ListView(

//               children: [
//                 CustomAppBar(
//                   titleappbar: "Find your Doctor....",
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 const ListCategoriesDoctors(),
                
//                 GridView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2, childAspectRatio: 0.7),
//                     itemBuilder: (BuildContext context, index ) {
//                       // return null;
//                       return CustomListDoctors(
//                           doctorsModel:
//                               DoctorsModel.fromJson(controller.data[index]));
//                     }),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
