import 'package:flutter/material.dart';
import 'package:app/themes/app_theme.dart';

class SubjectCard2 extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color bgColor;
  final VoidCallback? onTap; // optional tap handler

  const SubjectCard2({
    super.key,
    required this.imagePath,
    required this.title,
    required this.bgColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget cardContent = Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Image.asset(
              imagePath,
              height: 50,
              width: 50,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 12),
          Flexible(
            flex: 1,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.primaryA,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );

    // Wrap with InkWell if onTap is provided
    return onTap != null ? InkWell(onTap: onTap, child: cardContent) : cardContent;
  }
}
