// ignore_for_file: deprecated_member_use

import 'package:app/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
   
  final TextEditingController? controller; 

  const Header({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "LOGO"
                  .text
                  .xl3
                  .bold
                  .color(context.canvasColor)
                  .make(),
             
              Row(
                children: [
                  Text("Hi, Ali!  ",style: TextStyle(color: Colors.white),),
            CircleAvatar(
  child: ClipOval(
    child: Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREO17hg6KvLlweeZWN0LCEdi-OXM9qGpbQ9w&s",
      fit: BoxFit.cover,
      width: 40,
      height:40,
    ),
  ),
)

                ],
              ),
            ],
          ),
          const SizedBox(height: 5),

          Row(
  children: [
    Expanded(
      child: TextField(
        controller: controller, // shared controller
        autofocus: false,
        style: TextStyle(color: Colors.white), // or use proper color
        decoration: InputDecoration(
          hintText: "Search Subject, Topic...",
          hintStyle: TextStyle(color: Colors.white70),
          prefixIcon: Icon(Icons.search, color: Colors.white),
          filled: true,
          fillColor: AppColors.primaryB,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
    const SizedBox(width: 10),
    const Icon(CupertinoIcons.bell_fill).iconColor(Colors.white).iconSize(30),
  ],
)

        ],
      ),
    );
  }
}
