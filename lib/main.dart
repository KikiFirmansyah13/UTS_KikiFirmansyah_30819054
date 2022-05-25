import 'package:flutter/material.dart';
import 'package:e_tracer_study_alumni/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E-Tracer Study ALumni', home: const Page_Utama());
  }
}
