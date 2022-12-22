import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_app/app/models/list_company.dart';

class CompaniesController extends GetxController {
  final List<ListCompany> companies = [
    ListCompany(id: 1, name: 'Empresa 1'),
    ListCompany(id: 2, name: 'Empresa 2'),
    ListCompany(id: 3, name: 'Empresa 3'),
    ListCompany(id: 4, name: 'Empresa 4')
  ].obs;

 final controllerEC = TextEditingController();

  final companyList = [].obs;

  CompaniesController() {
    companyList.addAll(companies);
  }

  void filterCompanies(String userInput) {
    companyList.value = companies
        .where((person) =>
            person.name.toLowerCase().contains(userInput.toLowerCase()))
        .toList();
  }
}
