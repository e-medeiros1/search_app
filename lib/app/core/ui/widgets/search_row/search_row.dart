import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/text_form_field_theme.dart';

// ignore: must_be_immutable
class SearchRow extends StatefulWidget {
  Function()? onPressed;
  Function(String)? onChanged;
  final Function()? onTap;
  String label;
  TextEditingController idController;
  TextEditingController nameCompanyController;

  SearchRow(
      {Key? key,
      required this.onChanged,
      this.onTap,
      this.onPressed,
      required this.idController,
      required this.nameCompanyController,
      required this.label})
      : super(key: key);

  @override
  State<SearchRow> createState() => _SearchRowState();
}

class _SearchRowState extends State<SearchRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .2,
            child: TextFormField(
              textAlign: TextAlign.center,
              autofocus: true,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: textFormFieldTheme,
              controller: widget.idController,
              onChanged: widget.onChanged,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87, size: 34),
            onPressed: widget.onPressed,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: TextFormField(
                  readOnly: true,
                  textAlign: TextAlign.center,
                  decoration: textFormFieldTheme.copyWith(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: widget.label,
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 18),
                          ),
                          const TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: widget.onTap,
                  controller: widget.nameCompanyController,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}