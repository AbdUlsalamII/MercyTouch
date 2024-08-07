import 'package:flutter/material.dart';
import 'package:mercy_touch/Core/Constant/color.dart';

class CustomContainerBoxShadow extends StatelessWidget {
  final Widget child;

  const CustomContainerBoxShadow({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color.fromARGB(50, 161, 169, 203),
        boxShadow: [
                  BoxShadow(
                    color: AppColor.boxShadow.withOpacity(0.5),
                    blurRadius: 10,
                  ),],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: child,
      ),
    );
  }
}
