import 'package:flutter/material.dart';
import 'package:search_app/app/core/ui/theme/text_form_field_theme.dart';

class ShearchBottomSheet extends StatelessWidget {
  final TextEditingController? controllerText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? label;
  final Function()? onTap;

  const ShearchBottomSheet({
    Key? key,
    this.controllerText,
    this.onChanged,
    this.onSubmitted,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
      child: TextField(
        controller: controllerText,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        onTap: onTap,
        decoration: textFormFieldTheme.copyWith(
          labelText: label,
        ),
      ),
    );
  }
}
