import 'package:mercy_touch/Core/app_export.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final void Function()? onPressedFloatingActionButton;
  const CustomFloatingActionButton({super.key, this.onPressedFloatingActionButton});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.icon_color,
      onPressed: onPressedFloatingActionButton,
      child: Icon(
        Icons.calendar_month_rounded,
        color: AppColor.white_color,
      ),
    );
  }
}
