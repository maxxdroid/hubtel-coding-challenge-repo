import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final String date;
  const DateWidget({required this.date,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color:  Colors.grey.withOpacity(.2)),
      child:  Padding(
        padding: const EdgeInsets.all(10),
        child: Text( date, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),),
      ),
    );
  }
}
