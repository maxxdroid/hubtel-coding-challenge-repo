import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/loading.dart';
import 'package:hubtel_coding_challenge/pages/home.dart';
import 'package:hubtel_coding_challenge/pages/page_tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Loading(),
    );
  }
}

