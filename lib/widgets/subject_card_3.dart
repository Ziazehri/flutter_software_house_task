import 'package:flutter/material.dart';
import 'package:app/themes/app_theme.dart';

class SubjectCard3 extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Color bgColor;

  const SubjectCard3({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image section
          Flexible(
            flex: 1,
            child: Image.asset(
              imagePath,
              height: 40,
              width: 40,
              fit: BoxFit.contain,
            ),
          ),

          // const SizedBox(height: 0),

          // Title
          Flexible(
            flex: 1,
            child: Text(
              title,
              style: TextStyle(
                color: const Color.fromARGB(255, 89, 61, 165),
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.038,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // const SizedBox(height: 0),

          // Description
          Flexible(
            flex: 1,
            child: Text(
              description,
              style: TextStyle(
                color: AppColors.primaryA,
                fontWeight: FontWeight.w100,
                fontSize: screenWidth * 0.029,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
