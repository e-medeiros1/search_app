import 'package:flutter/material.dart';
import 'package:search_app/app/core/ui/widgets/search_row.dart';
import 'package:search_app/app/pages/home/cabecalho_tab/controller/cabecalho_controller.dart';

import 'widgets/custom_dialog.dart';

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
    CustomDialog dialog = CustomDialog();
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
            onTap: () {
              dialog.customDialog(
                context: context,
                controller: widget.controller,
                listValue: widget.controller.companyListValue,
                onChanged: widget.controller.companySearch,
                onSubmitted: widget.controller.searchAndSetCompany,
              );
            },
            iconOnPressed: () {
              dialog.customDialog(
                context: context,
                controller: widget.controller,
                listValue: widget.controller.companyListValue,
                onChanged: widget.controller.companySearch,
                onSubmitted: widget.controller.searchAndSetCompany,
              );
            },
            idController: widget.controller.companyId,
            nameController: widget.controller.companyName,
            idOnChanged: widget.controller.searchAndSetCompany,
            label: 'Empresa',
          ),
          SearchRow(
              onTap: () {
                dialog.customDialog(
                  context: context,
                  controller: widget.controller,
                  listValue: widget.controller.partnerListValue,
                  onChanged: widget.controller.searchPartner,
                  onSubmitted: widget.controller.searchAndSetPartner,
                );
              },
              iconOnPressed: () {
                dialog.customDialog(
                  context: context,
                  controller: widget.controller,
                  listValue: widget.controller.partnerListValue,
                  onChanged: widget.controller.searchPartner,
                  onSubmitted: widget.controller.searchAndSetPartner,
                );
              },
              idController: widget.controller.partnerId,
              nameController: widget.controller.partnerName,
              idOnChanged: widget.controller.searchAndSetPartner,
              label: 'Parceiro'),
          SearchRow(
            onTap: () {
              dialog.customDialog(
                context: context,
                controller: widget.controller,
                listValue: widget.controller.procedureListValue,
                onChanged: widget.controller.searchProcedure,
                onSubmitted: widget.controller.searchAndSetProcedure,
              );
            },
            iconOnPressed: () {
              dialog.customDialog(
                context: context,
                controller: widget.controller,
                listValue: widget.controller.procedureListValue,
                onChanged: widget.controller.searchProcedure,
                onSubmitted: widget.controller.searchAndSetProcedure,
              );
            },
            idController: widget.controller.procedureId,
            nameController: widget.controller.procedureName,
            idOnChanged: widget.controller.searchAndSetProcedure,
            label: 'Linha do Procedimento',
          ),
        ],
      ),
    );
  }
}
