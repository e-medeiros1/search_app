import 'package:flutter/material.dart';

import '../../../theme/text_form_field_theme.dart';
import '../search_row.dart';

class RightFormField extends StatelessWidget {
  const RightFormField({
    Key? key,
    required this.label,
    required this.widget,
    required this.textCompanyController,
  }) : super(key: key);

  final String label;
  final SearchRow widget;
  final TextEditingController textCompanyController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .6,
          child: TextFormField(
            onTap: widget.onTap,
            controller: textCompanyController,
            obscureText: false,
            readOnly: true,
            decoration: textFormFieldTheme.copyWith(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: label,
                      style: const TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                    const TextSpan(
                      text: '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            textAlign: TextAlign.center,
            enabled: true,
            enableInteractiveSelection: true,
          ),
        ),
      ],
    );
  }
}
