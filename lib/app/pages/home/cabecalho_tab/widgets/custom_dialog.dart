import 'package:flutter/material.dart';

Future<dynamic> customDialog(BuildContext context,
    {Function(String)? onChanged, Widget? widget}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: widget!,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
