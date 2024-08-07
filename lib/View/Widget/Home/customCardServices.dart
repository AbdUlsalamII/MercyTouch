import 'package:mercy_touch/Core/app_export.dart';

class GridServices extends GetView<HomeControllerImp> {
  const GridServices({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return Container(
          width: 240,
          height: 260,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.primary_color.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    service.imagePath,
                  ),
                ),
                Text(
                  service.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 4.0,
        childAspectRatio: 1.2,
      ),
    );
  }
}
