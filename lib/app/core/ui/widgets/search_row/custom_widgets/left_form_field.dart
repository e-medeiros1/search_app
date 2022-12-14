import 'package:flutter/material.dart';

import '../../../theme/text_form_field_theme.dart';
import '../search_row.dart';

class LeftFormField extends StatelessWidget {
  const LeftFormField({
    Key? key,
    required this.textNumberController,
    required this.widget,
  }) : super(key: key);

  final TextEditingController textNumberController;
  final SearchRow widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .2,
      child: TextFormField(
          controller: textNumberController,
          onChanged: widget.onChanged,
          autofocus: true,
          obscureText: false,
          keyboardType: TextInputType.number,
          decoration: textFormFieldTheme),
    );
  }
}