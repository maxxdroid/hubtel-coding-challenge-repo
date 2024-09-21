import 'package:flutter/material.dart';

class FailedCardDetails extends StatelessWidget {
  final String type;
  final String name;
  final String status;
  final String asset;
  final String message;
  const FailedCardDetails({required this.name, required this.status, required this.type, required this.asset,required this.message ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            // width: 1,
              color: Colors.grey
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("14:45PM", style: TextStyle(color: Colors.grey),),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                          child: Image.asset(
                            asset,
                            fit: BoxFit.cover,
                            width: 60.0,
                            height: 60.0,
                          )
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          ),
                          Text("024 123 4567", style: TextStyle(fontSize: 16, color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        color: Colors.red[100]?.withOpacity(.6),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Icon(Icons.cancel, color: Colors.red,),
                              Text("Failed", style: TextStyle(color: Colors.red),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      const Text("GHC 500", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10,),
            const Divider(),
            message == "" ? Row(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.person_3_outlined),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(type),
                    const SizedBox(width: 10,),
                    const SizedBox(width: 10,),
                    Text(message)
                  ],
                ),
                const Icon(Icons.star, color: Colors.yellow,)
              ],
            ) :
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.person_3_outlined),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(type),
                    const SizedBox(width: 10,),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(message)
                  ],
                ),
                const Icon(Icons.star, color: Colors.yellow,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
