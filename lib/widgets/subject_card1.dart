import 'package:app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color bgColor;

  const SubjectCard(  {
    super.key,
    required this.imagePath,
    required this.title,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image section
          Flexible(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(height: 5),

          // Title section
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryA,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.032,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
