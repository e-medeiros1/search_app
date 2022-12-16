import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:search_app/app/models/list_company.dart';
import 'package:search_app/app/pages/home/widgets/shearch_bottom_sheet.dart';

import '../controller/cabecalho_controller.dart';

class CustomBottomSheet {
  customBottomSheet(
    BuildContext context,
    CabecalhoController controller,
    ValueListenable listValue,
    Function(String)? onChanged,
    Function(String)? onSubmitted,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ValueListenableBuilder(
            valueListenable: listValue,
            builder: (context, list, widget) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: 300,
                  child: Column(
                    children: [
                      ShearchBottomSheet(
                        label: "Pesquise por nome ou código",
                        controllerText: controller.textController,
                        onChanged: onChanged,
                        onSubmitted: onSubmitted,
                      ),
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              ListCompany item = list[index];
                              return ListTile(
                                title: Text(
                                  '${item.id} - ${item.name}',
                                  style: const TextStyle(color: Colors.blue),
                                ),
                                onTap: () {
                                  controller.setValues(
                                    name: item.name,
                                    id: item.id,
                                  );
                                  controller.textController.clear();
                                  Navigator.pop(context);
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
