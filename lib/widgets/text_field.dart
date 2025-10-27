import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color cursorColor;
  final Icon? icon;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.cursorColor = Colors.black, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 55,
      width: double.infinity,
      child: TextField(
        cursorColor: cursorColor,
        decoration: InputDecoration(
          icon: icon,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(61, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
