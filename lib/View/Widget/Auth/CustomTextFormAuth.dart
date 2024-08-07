import 'package:mercy_touch/Core/app_export.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;

  final IconData icondata;
  final TextInputType datatype;
  final TextEditingController? mycontroller;
  final bool? obscuretext;
  final String? Function(String?) valid;
  final void Function()? onTapIcon;

  const CustomTextFormAuth({
    super.key,
    required this.hinttext,
    required this.icondata,
    required this.mycontroller,
    required this.datatype,
    required this.valid,
    this.obscuretext,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        style: Theme.of(context).textTheme.labelMedium,
        
        validator: valid,
        keyboardType: datatype,
        controller: mycontroller,
        obscureText: obscuretext == null || obscuretext == false ? false : true,
        cursorColor: AppColor.blue_two,
        decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Icon(
              icondata,
            ),
          ),
        ),
      ),
    );
  }
}
