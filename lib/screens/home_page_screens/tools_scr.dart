import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card1.dart';
import 'package:flutter/material.dart';

class ToolsPage extends StatelessWidget {
  

  const ToolsPage({super.key});

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

               Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Unlock Creativity ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "with\nFun & Smart ",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: "Tools",
          style: TextStyle(color: Colors.white),
        ),
      ],
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
                      SubjectCard(imagePath: "assets/images/drawingp.png",
                          title: "Drawing\nPad",bgColor:  const Color(0xFFCAD8EF)),
                      SubjectCard(imagePath: "assets/images/voicer.png",
                         title:  "Voice\nRecorder",bgColor:  const Color(0xFFFCE4C1)),
                      SubjectCard(imagePath:  "assets/images/whiteb.png",
                          title: "Whiteboard\nNotes",bgColor:  const Color(0xFFC0EABD)),
                    SubjectCard(imagePath:  "assets/images/flashc.png",
                          title: "Flash\nCard",bgColor:  const Color(0xFFCAD8EF)),
                    SubjectCard(imagePath:  "assets/images/calculator.png",
                          title: "Calculator",bgColor:  const Color(0xFFFCE4C1)),
                      SubjectCard(imagePath: "assets/images/wordf.png",
                          title: "Word Finder",bgColor:  const Color(0xFFC0EABD)),
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
}