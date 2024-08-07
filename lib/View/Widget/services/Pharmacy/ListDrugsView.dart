import 'package:mercy_touch/Controller/Services/Pharmacy/Drugs_controller.dart';
import 'package:mercy_touch/Core/app_export.dart';
import 'package:nb_utils/nb_utils.dart';

class ListDrugsView extends GetView<DrugsControllerImp> {
  final PharmacyModel pharmacyModel;
  const ListDrugsView({super.key, required this.pharmacyModel});

  @override
  Widget build(BuildContext context) {
    return  Container(
          child: InkWell(
            child: Card(
              color: AppColor.bg,
              elevation: 7.0,
              shadowColor: AppColor.primary_color,
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: CachedNetworkImage(
                            imageUrl: AppLink.imagepath + "/" + "${pharmacyModel.drugsImage}",
                            height: 130,
                          ).cornerRadiusWithClipRRect(20),
                        ),
                        16.width,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${pharmacyModel.drugsName}',
                                style: boldTextStyle(
                                    size: 18, weight: FontWeight.w500)),
                            8.height,
                            Text('${pharmacyModel.drugsCost ?? 0}',
                                style: primaryTextStyle(
                                    color: Colors.blue, size: 14)),
                            8.height,
                            Text('${pharmacyModel.drugsCount ?? 0}',
                                style: primaryTextStyle(size: 14))
                          ],
                        ).expand(),
                      ],
                    ),
                    16.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppButton(
                          text: 'View Details',
                          textStyle: primaryTextStyle(size: 15),
                          color: Colors.blue,
                          shapeBorder:
                              RoundedRectangleBorder(borderRadius: radius(16)),
                          onTap: () {},
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      
    
  }
}
