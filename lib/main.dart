import 'package:flutter/material.dart';
import 'package:search_app/app/core/routes/named_routes.dart';
import 'package:search_app/app/pages/home/home_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        initialRoute: NamedRoutes.HOME_PAGE,
        routes: {
          NamedRoutes.HOME_PAGE: (_) => const HomePage(),
        },
      ),
    );
