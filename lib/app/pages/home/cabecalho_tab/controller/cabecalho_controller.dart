import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:search_app/app/models/list_company.dart';

class CabecalhoController extends GetxController {
  List<ListCompany> companiesList = [
    ListCompany(id: 1, name: 'Empresa 1'),
    ListCompany(id: 2, name: 'Empresa 2'),
    ListCompany(id: 3, name: 'Empresa 3'),
    ListCompany(id: 4, name: 'Empresa 4'),
    ListCompany(id: 5, name: 'Empresa 5'),
  ].obs;

  List<ListCompany> partnersList = [
    ListCompany(id: 1, name: 'Parceiro 1'),
    ListCompany(id: 2, name: 'Parceiro 2'),
    ListCompany(id: 3, name: 'Parceiro 3'),
    ListCompany(id: 4, name: 'Parceiro 4'),
    ListCompany(id: 5, name: 'Parceiro 5'),
  ].obs;

  List<ListCompany> proceduresList = [
    ListCompany(id: 1, name: 'Linha do Procedimento 1'),
    ListCompany(id: 2, name: 'Linha do Procedimento 2'),
    ListCompany(id: 3, name: 'Linha do Procedimento 3'),
    ListCompany(id: 4, name: 'Linha do Procedimento 4'),
    ListCompany(id: 5, name: 'Linha do Procedimento 5'),
  ].obs;

  final textController = TextEditingController();

  final companyId = TextEditingController();
  final companyName = TextEditingController();

  final partnerId = TextEditingController();
  final partnerName = TextEditingController();

  final procedureId = TextEditingController();
  final procedureName = TextEditingController();

  searchAndSetCompany(String value) {
    if (value.isNotEmpty) {
      for (ListCompany model in companiesList) {
        if (model.id.toString() == value) {
          companyName.text = model.name;
          companyId.text = model.id.toString();
          companyId.selection =
              TextSelection.collapsed(offset: companyId.text.length);
        }
        update();
      }
    }
  }

  void searchAndSetPartner(String value) {
    if (value.isNotEmpty) {
      for (ListCompany model in partnersList) {
        if (model.id.toString() == value) {
          partnerId.text = model.id.toString();
          partnerName.text = model.name;
          partnerId.selection =
              TextSelection.collapsed(offset: partnerId.text.length);
        }
        update();
      }
    }
  }

  void searchAndSetProcedure(String value) {
    if (value.isNotEmpty) {
      for (ListCompany model in proceduresList) {
        if (model.id.toString() == value) {
          procedureId.text = model.id.toString();
          procedureName.text = model.name;
          procedureId.selection =
              TextSelection.collapsed(offset: procedureId.text.length);
        }
        update();
      }
    }
  }

  void setValues({required int id, required String name}) {
    if (id.toString().isNotEmpty) {
      if (name.contains('Empresa')) {
        companyId.text = id.toString();
        companyName.text = name;
      } else if (name.contains('Parceiro')) {
        partnerId.text = id.toString();
        partnerName.text = name;
      } else if (name.contains('Procedimento')) {
        procedureId.text = id.toString();
        procedureName.text = name;
      }
    }
    update();
  }
}
