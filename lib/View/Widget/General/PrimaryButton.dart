import 'package:mercy_touch/Core/app_export.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class PrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: double.infinity,
        splashColor: AppColor.splash_color,
        color: AppColor.primary_color,
        textColor: AppColor.white_color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(
          vertical: 13,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
