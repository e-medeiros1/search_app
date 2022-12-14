import 'package:flutter/material.dart';

import 'custom_widgets/left_form_field.dart';
import 'custom_widgets/right_form_field.dart';

// ignore: must_be_immutable
class SearchRow extends StatefulWidget {
  String label;
  Function()? onTap;
  Function(String)? onChanged;
  SearchRow({Key? key, required this.onTap, required this.onChanged, required this.label})
      : super(key: key);

  @override
  State<SearchRow> createState() => _SearchRowState();
}

class _SearchRowState extends State<SearchRow> {
  final textNumberController = TextEditingController();
  final textCompanyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LeftFormField(
              textNumberController: textNumberController, widget: widget),
          const Icon(Icons.search, color: Colors.black, size: 34),
          RightFormField(
              widget: widget, textCompanyController: textCompanyController, label: widget.label,),
        ],
      ),
    );
  }
}
