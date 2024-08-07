import 'package:mercy_touch/Core/app_export.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(
        color: AppColor.white_color,
        elevation: 5,
        shadowColor: AppColor.primary_color,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          
          children: [
            ...List.generate(controller.listPage.length + 1, (index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2
                  ? Spacer()
                  : CustomButtonAppBar(
                      titlebutton: controller.titlebottomappbar[i],
                      iconbutton: controller.iconbottomappbar[i],
                      onPressedbutton: () {
                        controller.changePage(i);
                      },
                      active: controller.currentpage == i ? true : false,
                    );
            }),

            // Row(
            //   children: [
            // CustomButtonAppBar(
            //   titlebutton: 'Home',
            //   iconbutton: Icons.home,
            //   onPressedbutton: () {
            //     controller.changePage(0);
            //   },
            //   active: controller.currentpage == 0 ? true : false,
            // ),
            //     CustomButtonAppBar(
            //       titlebutton: 'Setting',
            //       iconbutton: Icons.settings,
            //       onPressedbutton: () {
            //         controller.changePage(1);
            //       },
            //       active: controller.currentpage == 1 ? true : false,
            //     ),
            //   ],
            // ),
            // Spacer(),
            // Row(
            //   children: [
            //     CustomButtonAppBar(
            //       titlebutton: 'Profile',
            //       iconbutton: Icons.person,
            //       onPressedbutton: () {
            //         controller.changePage(2);
            //       },
            //       active: controller.currentpage == 2 ? true : false,
            //     ),
            //     CustomButtonAppBar(
            //       titlebutton: 'Favorite',
            //       iconbutton: Icons.favorite,
            //       onPressedbutton: () {
            //         controller.changePage(3);
            //       },
            //       active: controller.currentpage == 3 ? true : false,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
