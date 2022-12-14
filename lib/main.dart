import 'package:flutter/material.dart';
import 'package:search_app/app/pages/home/main_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const MainPage(),
      ),
    );
