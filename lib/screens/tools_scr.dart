import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class ToolsPage extends StatelessWidget {
  final VoidCallback? onBack;

  const ToolsPage({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomHeader2(),

                const SizedBox(height: 30),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Unlock Creativity with Fun & Smart Tools",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 14,
                    childAspectRatio: 0.8, // Adjusted ratio
                    children: [
                      _buildSubjectCard(context, "assets/images/drawingp.png",
                          "Drawing\nPad", const Color(0xFFCAD8EF)),
                      _buildSubjectCard(context, "assets/images/voicer.png",
                          "Voice\nRecorder", const Color(0xFFFCE4C1)),
                      _buildSubjectCard(context, "assets/images/whiteb.png",
                          "Whiteboard\nNotes", const Color(0xFFC0EABD)),
                      _buildSubjectCard(context, "assets/images/flashc.png",
                          "Flash\nCard", const Color(0xFFCAD8EF)),
                      _buildSubjectCard(context, "assets/images/calculator.png",
                          "Calculator", const Color(0xFFFCE4C1)),
                      _buildSubjectCard(context, "assets/images/wordf.png",
                          "Word Finder", const Color(0xFFC0EABD)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
// card
  Widget _buildSubjectCard(
      BuildContext context, String imagePath, String title, Color bgColor) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Image section
            Flexible(
              flex: 2,
              child: Center(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 5),

            //  Title section
            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
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
      ),
    );
  }
}








