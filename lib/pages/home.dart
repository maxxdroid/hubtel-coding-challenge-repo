import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/widgets/app_bar_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          AppBarWidget(width: width,)
        ],
      ),
    );
  }
}
