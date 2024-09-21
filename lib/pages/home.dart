import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/widgets/app_bar_widget.dart';
import 'package:hubtel_coding_challenge/widgets/card_details.dart';
import 'package:hubtel_coding_challenge/widgets/date_widget.dart';
import 'package:hubtel_coding_challenge/widgets/search_bar_widget.dart';

import '../widgets/failed_details_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          AppBarWidget(width: width,),
          const Divider(),
          SearchBarWidget(width: width,),
          Container(
            height: height* .65,
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DateWidget(date: "May 24, 2022",),
                  CardDetails(
                      name: "Emmanuel Rockson Kwabena Uncle Ebo",
                      status: "Successful",
                      message: "Cool your hear wai",
                      type: "Personal",
                      asset: "assets/images/momo.jpeg"
                  ),
                  FailedCardDetails(
                      name: "Absa",
                      status: "Successful",
                      type: "Personal",
                      message: "Cool your hear wai",
                      asset: "assets/images/absa.png"
                  ),
                  DateWidget(date: "May 23, 2022",),
                  CardDetails(
                      name: "Emmanuel Rockson",
                      status: "Successful",
                      type: "Other",
                      message: "Cool your hear wai",
                      asset: "assets/images/momo.jpeg"
                  ),
                  CardDetails(
                      name: "Emmanuel Rockson",
                      status: "Successful",
                      type: "Other",
                      message: "",
                      asset: "assets/images/momo.jpeg"
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.only(bottom: 20),
        width: 130,
        child: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {  },
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add_circle_rounded, color: Colors.white,),
                Text("SEND NEW", style: TextStyle(color: Colors.white),)
              ],
          ),
        ),
      ),
    );
  }
}
