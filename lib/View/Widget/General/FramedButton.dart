import 'package:flutter/material.dart';
import 'package:mercy_touch/Core/Constant/color.dart';

//import 'package:flutter_svg/flutter_svg.dart';

class FramedButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const FramedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColor.primary_color,
            backgroundColor: AppColor.white_color,
            side: BorderSide(width: 2, color: AppColor.primary_color),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          autofocus: true,
          onPressed: onPressed,
          child: Text(
            text,
          ),
        ));
  }
}
