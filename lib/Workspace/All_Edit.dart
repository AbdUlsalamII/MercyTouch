//! remote

// List<Services> services = [
//   Services("medical guide", "${AppImageAsset.medicalguide}",
//       "${AppRoute.MedicalGuide}"),
//   Services("consultation", "${AppImageAsset.congratulations}",
//       "${AppRoute.Consultation}"),
//   Services("Laboratory", "${AppImageAsset.laboratory}",
//       "${AppRoute.Laboratory}"),
//   Services("pharmacy", "${AppImageAsset.pharmacy}",
//       "${AppRoute.Pharmacy}"),
// ];

//*---------------------------------------


//! اذا اردنا تحميل البيانات من السيرفر
//* Model
/*
class Categoriesmodel {
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatetime;

  Categoriesmodel(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesDatetime});

  Categoriesmodel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = this.categoriesId;
    data['categories_name'] = this.categoriesName;
    data['categories_name_ar'] = this.categoriesNameAr;
    data['categories_image'] = this.categoriesImage;
    data['categories_datetime'] = this.categoriesDatetime;
    return data;
  }
}*/

//*---------------------------------------


//! تصميم card

// child: Card(
          //   color: AppColor.blue_two,
          //   elevation: 4.0,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10.0)),
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       children: <Widget>[
          //         CircleAvatar(
          //           radius: 40,
          //           child: ClipOval(
          //                 child: Image.asset(
          //                   service.imagePath,
          //                   width: 80,
          //                   height: 80,
          //                   fit: BoxFit.cover,
          //                 ),
          //               ),
          //         ),
          //         SizedBox(height: 10), // مسافة بين الصورة والاسم
          //         Text(
          //           service.name,
          //           style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          //   ),
          /*Column(
                children: [
                  Image.asset(
                    service.imagePath,
                    height: 100, // ارتفاع الصورة
                    width: double.infinity, // عرض الصورة
                    fit: BoxFit.fill, // ضبط الصورة لتملأ المساحة
                  ),
                  ListTile(
                    title: Text(service.name),
                    onTap: () {
                      // الانتقال إلى صفحة التفاصيل
                      Get.toNamed(service.route);
                    },
                  ),
                ],
              ),*/

 //!