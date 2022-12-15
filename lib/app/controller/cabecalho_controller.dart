import 'package:flutter/cupertino.dart';
import 'package:search_app/app/models/list_company.dart';

class CabecalhoController extends ChangeNotifier {
  final textController = TextEditingController();

  final companyName = TextEditingController();
  final companyId = TextEditingController();

  final partnerName = TextEditingController();
  final partnerId = TextEditingController();

  final procedureName = TextEditingController();
  final procedureId = TextEditingController();

  List<ListCompany> companyList = [
    ListCompany(id: 1, name: 'Empresa 1'),
    ListCompany(id: 2, name: 'Empresa 2'),
    ListCompany(id: 3, name: 'Empresa 3'),
    ListCompany(id: 4, name: 'Empresa 4'),
    ListCompany(id: 5, name: 'Empresa 5'),
  ];

  List<ListCompany> partnerList = [
    ListCompany(id: 1, name: 'Parceiro 1'),
    ListCompany(id: 2, name: 'Parceiro 2'),
    ListCompany(id: 3, name: 'Parceiro 3'),
    ListCompany(id: 4, name: 'Parceiro 4'),
    ListCompany(id: 5, name: 'Parceiro 5'),
  ];

  List<ListCompany> procedureList = [
    ListCompany(id: 1, name: 'Linha do Procedimento 1'),
    ListCompany(id: 2, name: 'Linha do Procedimento 2'),
    ListCompany(id: 3, name: 'Linha do Procedimento 3'),
    ListCompany(id: 4, name: 'Linha do Procedimento 4'),
    ListCompany(id: 5, name: 'Linha do Procedimento 5'),
  ];

  ValueNotifier<List<ListCompany>> companyListValue =
      ValueNotifier(<ListCompany>[]);
  ValueNotifier<List<ListCompany>> partnerListValue =
      ValueNotifier(<ListCompany>[]);
  ValueNotifier<List<ListCompany>> procedureListValue =
      ValueNotifier(<ListCompany>[]);

  homeController() {
    companyListValue.value = companyList;
    partnerListValue.value = partnerList;
    procedureListValue.value = procedureList;
  }

  companySearch(String value) {
    if (value.isNotEmpty) {
      final listSearch = companyList.where((e) {
        companyListValue.value.where((element) {
          final id = element.id.toString();
          final inputId = value.toLowerCase();
          return id.contains(inputId);
        });
        final name = e.name.toLowerCase();
        final input = value.toLowerCase();
        return name.contains(input);
      }).toList();
      companyListValue.value = listSearch;

      notifyListeners();
    }
  }

  searchAndSetCompany(String value) {
    if (value.isNotEmpty) {
      for (ListCompany model in companyList) {
        if (model.id.toString() == value) {
          companyName.text = model.name;
          companyId.text = model.id.toString();
        }
        notifyListeners();
      }
    }
  }

  searchPartner(String value) {
    if (value.isNotEmpty) {
      final listSeach = partnerList.where((e) {
        partnerListValue.value.where((element) {
          final id = element.id.toString().toLowerCase();
          final inputId = value.toLowerCase();
          return id.contains(inputId);
        });
        final titulo = e.name.toLowerCase();
        final input = value.toLowerCase();
        return titulo.contains(input);
      }).toList();
      partnerListValue.value = listSeach;
      notifyListeners();
    }
  }

  void searchAndSetPartner(String value) {
    if (value.isNotEmpty) {
      for (ListCompany model in partnerList) {
        if (model.id.toString() == value) {
          partnerId.text = model.id.toString();
          partnerName.text = model.name;
        }
        notifyListeners();
      }
    }
  }

  void searchProcedure(String value) {
    if (value.isNotEmpty) {
      final listSeach = procedureList.where((e) {
        procedureListValue.value.where((element) {
          final id = element.id.toString();
          final inputId = value.toLowerCase();
          return id.contains(inputId);
        });
        final titulo = e.name.toLowerCase();
        final input = value.toLowerCase();
        return titulo.contains(input);
      }).toList();
      procedureListValue.value = listSeach;
      notifyListeners();
    }
  }

  void searchAndSetProcedure(String value) {
    if (value.isNotEmpty) {
      for (ListCompany model in procedureList) {
        if (model.id.toString() == value) {
          procedureId.text = model.id.toString();
          procedureName.text = model.name;
        }
        notifyListeners();
      }
    }
  }

  void setValues({required int id, required String name}) {
    if (id.toString().isNotEmpty) {
      if (name.contains('Empresa')) {
        companyId.text = id.toString();
        companyName.text = name;
        notifyListeners();
      } else if (name.contains('Parceiro')) {
        partnerId.text = id.toString();
        partnerName.text = name;
        notifyListeners();
      } else if (name.contains('Procedimento')) {
        procedureId.text = id.toString();
        procedureName.text = name;
        notifyListeners();
      }
    }
  }
}
