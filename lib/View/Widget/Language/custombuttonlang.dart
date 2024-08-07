import 'package:flutter/material.dart';
import 'package:mercy_touch/Core/Constant/color.dart';

class Custombuttonlang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const Custombuttonlang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: MaterialButton(
        color: AppColor.blue_one,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
