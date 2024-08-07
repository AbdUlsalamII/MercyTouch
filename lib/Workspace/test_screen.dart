import 'package:mercy_touch/Core/app_export.dart';

void main() {
  Get.put(MyServices());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'خدمات التطبيق',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/details', page: () => DetailsPage()), // صفحة التفاصيل
        GetPage(name: '/detailstwo', page: () => DetailsPagetwo()),
      ],
    );
  }
}

//! static
class HomePage extends StatelessWidget {
//! Screen & Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        title: Text('قائمة الخدمات'),
      ),
      body: GridView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return Container(
            child: InkWell(
              onTap: () {
                // controller.goToDoctors(controller.categories, i!);
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // color: AppColor.primary_color.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      service.imagePath,
                      // ignore: deprecated_member_use
                    ),
                  ),
                  Text(
                    service.name,
                    // style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of items per row
          mainAxisSpacing: 10.0, // Spacing between rows
          crossAxisSpacing: 1.0, // Spacing between columns
          childAspectRatio: 1.2, // Aspect ratio of each item
        ),
      ),
    );
  }
}

//! screen services
class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل الخدمة")),
      body: Center(child: Text("محتوى تفاصيل الخدمة")),
    );
  }
}

class DetailsPagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("salam الخدمة")),
      body: Center(child: Text("محتوى تفاصيل الخدمة")),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'service.dart'; // تأكد من استيراد ملف الخدمة

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'خدمات التطبيق',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/details', page: () => DetailsPage()), // صفحة التفاصيل
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Service> services = [
    Service('الخدمة 1', '/details'),
    Service('الخدمة 2', '/details'),
    Service('الخدمة 3', '/details'),
    Service('الخدمة 4', '/details'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('قائمة الخدمات'),
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(service.name),
              onTap: () {
                // الانتقال إلى صفحة التفاصيل
                Get.toNamed(service.route);
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل الخدمة")),
      body: Center(child: Text("محتوى تفاصيل الخدمة")),
    );
  }
}

 */



// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
     
     

//     return Scaffold(
//       backgroundColor: AppColor.bg,
//       appBar: AppBar(
//         title: Text('قائمة الخدمات'),
//       ),
//       body: 
//          GridView.builder(
//           itemCount: services.length,
//           itemBuilder: (context, index) {
//             final service = services[index];
//             return Container(
//               width: 240,
//               height: 260,
//               child: InkWell(
//                 onTap: () {
//                 },
//                 child: Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         color: AppColor.primary_color.withOpacity(0.05),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       height: 150,
//                       width: 150,
//                       child: Image.asset(
//                         service.imagePath,
//                       ),
//                     ),
//                     Text(
//                       service.name,
//                       style: Theme.of(context).textTheme.headlineSmall,
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 10.0,
//             crossAxisSpacing: 4.0,
//             childAspectRatio: 1.2,
//           ),
//         ),
      
//     );
//   }
// }

