import 'package:flutter/material.dart';
import 'package:search_app/app/core/ui/widgets/search_row/search_row.dart';
import 'package:search_app/app/pages/home/controller/cabecalho_controller.dart';

import 'custom_bottom_sheet.dart';

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
    CustomBottomSheet bottomSheet = CustomBottomSheet();
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
              bottomSheet.customBottomSheet(
                context,
                widget.controller,
                widget.controller.companyListValue,
                widget.controller.companySearch,
                widget.controller.searchAndSetCompany,
              );
            },
            idController: widget.controller.companyId,
            nameController: widget.controller.companyName,
            onChanged: widget.controller.searchAndSetCompany,
            label: 'Empresa',
          ),
          SearchRow(
              onPressed: () {
                bottomSheet.customBottomSheet(
                  context,
                  widget.controller,
                  widget.controller.partnerListValue,
                  widget.controller.searchPartner,
                  widget.controller.searchAndSetPartner,
                );
              },
              idController: widget.controller.partnerId,
              nameController: widget.controller.partnerName,
              onChanged: widget.controller.searchAndSetPartner,
              label: 'Parceiro'),
          SearchRow(
            onPressed: () {
              bottomSheet.customBottomSheet(
                context,
                widget.controller,
                widget.controller.procedureListValue,
                widget.controller.searchProcedure,
                widget.controller.searchAndSetProcedure,
              );
            },
            idController: widget.controller.procedureId,
            nameController: widget.controller.procedureName,
            onChanged: widget.controller.searchAndSetProcedure,
            label: 'Linha do Procedimento',
          ),
        ],
      ),
    );
  }
}
