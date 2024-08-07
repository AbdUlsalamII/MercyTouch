import 'package:mercy_touch/Core/app_export.dart';

class PharmacyCard extends StatelessWidget {
  final String drugsName;
  final int capacity;
  final String type;
  final String price;
  final String imagePath;
  // final OnTap onTap;
  const PharmacyCard({
    super.key,
    required this.drugsName,
    required this.capacity,
    required this.type,
    required this.price,
    required this.imagePath,

    // required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        height: 260,
        child: InkWell(
          onTap: () {},
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
                            drugsName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                capacity.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                type,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                   '\$',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    price,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                    ],
                  ))),
        ));
  }
}
