import 'package:app_mania/views/detailPage.dart';
import 'package:app_mania/views/homePage.dart';
import 'package:app_mania/views/recipePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        'detail_page': (context) => DetailPage(),
        'Recipe_Page': (context) => RecipePage(),
      },
    );
  }
}
