import 'package:flutter/material.dart';
import 'package:search_app/app/core/ui/widgets/cabecalho_tab.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          title: Text(
            'Pendência de Faturamento',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          titlePadding: EdgeInsetsDirectional.only(bottom: 30),
        ),
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        toolbarHeight: MediaQuery.of(context).size.height * .09,
        elevation: 0,
        actions: const [
          Icon(Icons.more_vert, size: 30),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: const [
                      TabBar(
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        indicatorColor: Colors.blue,
                        labelColor: Colors.blue,
                        tabs: [
                          Tab(text: 'Cabeçalho'),
                          Tab(text: 'Catálogo'),
                          Tab(text: 'Carrinho'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            CabecalhoTab(),
                            Icon(Icons.list_alt),
                            Icon(Icons.car_repair_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
