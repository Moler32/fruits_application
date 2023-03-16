import 'package:flutter/material.dart';
import 'package:fruits_application/localization/ua.dart';
import 'package:fruits_application/ui/screens/home/page/home.dart';

class FruitsApp extends StatelessWidget {
  const FruitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: LocaleKeys.fruitsApp,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}
