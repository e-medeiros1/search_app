import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_app/app/core/ui/theme/text_form_field_theme.dart';

import 'controller/catalogo.controller.dart';

class CatalogoTab extends StatefulWidget {
  const CatalogoTab({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogoTab> createState() => _CatalogoTabState();
}

class _CatalogoTabState extends State<CatalogoTab> {
  @override
  void dispose() {
    Get.delete<CompaniesController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<CompaniesController>(
        init: CompaniesController(),
        builder: (controller) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                child: TextField(
                  onChanged: (value) {
                    controller.filterCompanies(value);
                  },
                  decoration: textFormFieldTheme.copyWith(
                      label: const Text('Pesquise por nome ou código '),
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: controller.companyList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        '${controller.companyList[index].id} -  ${controller.companyList[index].name}',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
