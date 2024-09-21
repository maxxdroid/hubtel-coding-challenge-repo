import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final double width;
  const SearchBarWidget({required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:  Colors.grey.withOpacity(.4)),
          width: width * .8,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(width: 10,),
                Icon(Icons.search, size: 24,),
                SizedBox(width: 10,),
                SizedBox(
                  width: width * .5,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search"
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_outlined, size: 35,))
      ],
    );
  }
}

