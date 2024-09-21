import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final double width;
  const AppBarWidget({required this.width,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:  Colors.grey.withOpacity(.4)),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * .45,
            child: const Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("History", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * .45,
            child: const SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Transaction Summary", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.grey)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
