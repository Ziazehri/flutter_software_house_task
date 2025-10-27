import 'package:flutter/material.dart';

class CircleAvaters extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;

  const CircleAvaters({
    super.key,
    required this.title,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
