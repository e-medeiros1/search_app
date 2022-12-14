import 'package:flutter/material.dart';
import 'package:search_app/app/core/ui/widgets/search_row/search_row.dart';

class CabecalhoTab extends StatelessWidget {
  const CabecalhoTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Cabeçalho de nota',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600)),
          const SizedBox(height: 10),
          const Text('Preencha informações de cabeçalho do pedido',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 1.5)),
          const SizedBox(height: 10),
          SearchRow(label: 'Empresa', onChanged: (value) {}, onTap: () {}),
          SearchRow(label: 'Parceiro', onChanged: (value) {}, onTap: () {}),
          SearchRow(
              label: 'Linha do Procedimento',
              onChanged: (value) {},
              onTap: () {}),
        ],
      ),
    );
  }
}
