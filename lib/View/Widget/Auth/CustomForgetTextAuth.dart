import 'package:mercy_touch/Core/app_export.dart';

class CustomForgetTextAuth extends StatelessWidget {
  final void Function() onTap;
  const CustomForgetTextAuth({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColor.splash_color,
      borderRadius: BorderRadius.circular(25),
      child: Text(
        "ForgetPassword".tr,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      onTap: onTap,
    );
  }
}
