import 'package:flutter/material.dart';
import 'package:mvc_architecture/controller/internet_controller.dart';
import 'package:mvc_architecture/model/internet_model.dart';
import 'view/internet_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Check (MVC)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InternetScreen(
        controller: InternetController(
          model: InternetModel(),
        ),
      ),
    );
  }
}
