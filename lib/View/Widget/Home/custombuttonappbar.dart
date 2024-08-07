import 'package:mercy_touch/Core/app_export.dart';

// ignore: must_be_immutable
class CustomButtonAppBar extends StatelessWidget {
  final String titlebutton;
  final IconData iconbutton;
  final active;
  final void Function()? onPressedbutton;
  const CustomButtonAppBar(
      {super.key,
      required this.titlebutton,
      required this.iconbutton,
      this.onPressedbutton,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressedbutton,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconbutton,
            color: active == true ? AppColor.icon_color : AppColor.grey_color,
          ),
          Text(
            titlebutton,
            style: TextStyle(
                fontSize: 14,
                color:
                    active == true ? AppColor.icon_color : AppColor.grey_color),
          ),
        ],
      ),
    );
  }
}
