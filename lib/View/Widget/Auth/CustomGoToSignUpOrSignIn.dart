
import 'package:mercy_touch/Core/app_export.dart'; 

class CustomGoToSignUpOrSignIn extends StatelessWidget {
  final String text_one;
  final String text_two;
  final void Function() onTap;
  const CustomGoToSignUpOrSignIn({super.key, required this.text_one, required this.text_two, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text_one,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        InkWell(
          splashColor: AppColor.primary_color,
          borderRadius: BorderRadius.circular(25),
          child: Text(
            text_two,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onTap: onTap,
        )
      ],
    );
  }
}
