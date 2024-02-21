import 'package:flutter/material.dart';

import 'package:form_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        // inputDecorationTheme: InputDecorationTheme(),
      ),
      home: HomePage(),
    );
  }
}
