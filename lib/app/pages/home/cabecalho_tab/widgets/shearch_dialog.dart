import 'package:flutter/material.dart';
import 'package:search_app/app/core/ui/theme/text_form_field_theme.dart';

class SearchDialog extends StatelessWidget {
  final TextEditingController? controllerText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const SearchDialog({
    Key? key,
    this.controllerText,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
      child: TextField(
        controller: controllerText,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        decoration: textFormFieldTheme.copyWith(
          labelText: 'Pesquise por nome ou código',
        ),
      ),
    );
  }
}
