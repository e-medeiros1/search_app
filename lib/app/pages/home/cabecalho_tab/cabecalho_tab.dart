import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_app/app/core/ui/widgets/search_row.dart';
import 'package:search_app/app/pages/home/cabecalho_tab/controller/cabecalho_controller.dart';

import 'widgets/custom_dialog.dart';

class CabecalhoTab extends StatefulWidget {
  const CabecalhoTab({
    Key? key,
  }) : super(key: key);

  @override
  State<CabecalhoTab> createState() => _CabecalhoTabState();
}

class _CabecalhoTabState extends State<CabecalhoTab> {
  var instance = Get.put(CabecalhoController());

  @override
  void dispose() {
    Get.delete<CabecalhoController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Cabeçalho de nota',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600),
            ),
            const SizedBox(height: 10),
            const Text('Preencha informações de cabeçalho do pedido',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    letterSpacing: 1.5)),
            const SizedBox(height: 10),
            SearchRow(
              iconOnPressed: () {
                customDialog(
                  context,
                  widget: ListView.builder(
                    itemCount: instance.companiesList.length,
                    itemBuilder: (context, index) {
                      final list = instance.companiesList[index];
                      return ListTile(
                        title: Text(
                          '${list.id} -  ${list.name}',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          instance.setValues(id: list.id, name: list.name);
                          instance.textController.clear();
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  ),
                );
              },
              idController: instance.companyId,
              nameController: instance.companyName,
              idOnChanged: instance.searchAndSetCompany,
              label: 'Empresa',
            ),
            SearchRow(
                iconOnPressed: () {
                  customDialog(
                    context,
                    widget: ListView.builder(
                      itemCount: instance.partnersList.length,
                      itemBuilder: (context, index) {
                        final list = instance.partnersList[index];
                        return ListTile(
                          title: Text(
                            '${list.id} -  ${list.name}',
                            style: const TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            instance.setValues(id: list.id, name: list.name);
                            instance.textController.clear();
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  );
                },
                idController: instance.partnerId,
                nameController: instance.partnerName,
                idOnChanged: instance.searchAndSetPartner,
                label: 'Parceiro'),
            SearchRow(
              iconOnPressed: () {
                customDialog(
                  context,
                  widget: ListView.builder(
                    itemCount: instance.proceduresList.length,
                    itemBuilder: (context, index) {
                      final list = instance.proceduresList[index];
                      return ListTile(
                        title: Text(
                          '${list.id} -  ${list.name}',
                          style: const TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          instance.setValues(id: list.id, name: list.name);
                          instance.textController.clear();
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  ),
                );
              },
              idController: instance.procedureId,
              nameController: instance.procedureName,
              idOnChanged: instance.searchAndSetProcedure,
              label: 'Linha do Procedimento',
            ),
          ],
        ));
  }
}
