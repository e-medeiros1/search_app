import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:search_app/app/controller/cabecalho_controller.dart';
import 'package:search_app/app/core/ui/widgets/search_row/search_row.dart';

import '../../../core/ui/widgets/input_component.dart';

class CabecalhoTab extends StatefulWidget {
  final CabecalhoController controller;
  const CabecalhoTab({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<CabecalhoTab> createState() => _CabecalhoTabState();
}

class _CabecalhoTabState extends State<CabecalhoTab> {
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
            onPressed: () {
              dialogCustom(
                widget.controller,
                widget.controller.companyListValue,
                widget.controller.companySearch,
                widget.controller.searchAndSetCompany,
              );
            },
            idController: widget.controller.companyId,
            nameCompanyController: widget.controller.companyName,
            onChanged: widget.controller.searchAndSetCompany,
            label: 'Empresa',
          ),
          SearchRow(
              onPressed: () {
                dialogCustom(
                  widget.controller,
                  widget.controller.partnerListValue,
                  widget.controller.searchPartner,
                  widget.controller.searchAndSetPartner,
                );
              },
              idController: widget.controller.partnerId,
              nameCompanyController: widget.controller.partnerName,
              onChanged: widget.controller.searchAndSetPartner,
              label: 'Parceiro'),
          SearchRow(
            onPressed: () {
              dialogCustom(
                widget.controller,
                widget.controller.procedureListValue,
                widget.controller.searchProcedure,
                widget.controller.searchAndSetProcedure,
              );
            },
            idController: widget.controller.procedureId,
            nameCompanyController: widget.controller.procedureName,
            onChanged: widget.controller.searchAndSetProcedure,
            label: 'Linha do Procedimento',
          ),
        ],
      ),
    );
  }

  void dialogCustom(
    CabecalhoController controller,
    ValueListenable listValue,
    Function(String)? onChanged,
    dynamic Function(String)? onSubmitted,
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
                            SearchDialogBar(
                              border: false,
                              label: "Pesquise pelo código ou descrição",
                              controllerText: controller.textController,
                              onChanged: onChanged,
                              onSubmitted: onSubmitted,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: list.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final item = list[index];
                                    return ListTile(
                                      title: Text(
                                        '${item.id} - ${item.name}',
                                      ),
                                      onTap: () {
                                        controller.setValues(
                                            id: item.id, name: item.name);
                                        Navigator.pop(context);
                                        controller.textController.clear();
                                      },
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ));
  }
}
