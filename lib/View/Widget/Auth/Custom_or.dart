import 'package:mercy_touch/Core/app_export.dart'; 

class DividerRow extends StatelessWidget {
  const DividerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'OR',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const Expanded(child: Divider())
      ],
    );
  }
}
