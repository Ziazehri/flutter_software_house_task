// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomHeader2 extends StatelessWidget {
   
  final TextEditingController? controller; 

  const CustomHeader2({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: "LOGO"
                        .text
                        .xl2
                        .bold
                        .color(context.canvasColor)
                        .make(),
                  ),
                      IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
      Navigator.pop(context); // goes back to previous screen
    },
  ),
                ],
              ),
             
              Row(
                children: [
                 Icon(Icons.search).iconColor(Colors.white).iconSize(25),
                   const SizedBox(width: 10),
    const Icon(CupertinoIcons.bell_fill).iconColor(Colors.white).iconSize(25),
    


 

                ],
              ),
            ],
          ),


        ],
      ),
    );
  }
}