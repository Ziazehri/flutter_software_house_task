import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card2.dart';
import 'package:flutter/material.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:Column(
  children: [
    //  Header
    const Flexible(
      flex: 0,
      child: CustomHeader2(),
    ),

    // Image section
    Flexible(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Image.asset(
          "assets/images/readingmain.png",
          fit: BoxFit.contain,
        ),
      ),
    ),

    //  Title
    Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Discover ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Stories ",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: " &\n Word Games",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
      ),
    ),

    // Subtitle
    const Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "Read, explore, and grow your vocabulary.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    ),

    const SizedBox(height: 10),

    //  Grid Section
    Flexible(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.1,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: const [
            SubjectCard2(
              imagePath: "assets/images/readas.png",
              title: "Read-Aloud \nStories",
              bgColor: Color(0xFFCAD8EF),
            ),
            SubjectCard2(
              imagePath: "assets/images/pictureb.png",
              title: "Picture\nBook",
              bgColor: Color.fromARGB(255, 252, 228, 193),
            ),
            SubjectCard2(
              imagePath: "assets/images/slightw.png",
              title: "Slight Words",
              bgColor: Color(0xFFC0EABD),
            ),
            SubjectCard2(
              imagePath: "assets/images/story.png",
              title: "Story Builder",
              bgColor: Color(0xFFCAD8EF),
            ),
          ],
        ),
      ),
    ),
  ],
)

          ),
        )),
    );
  }



}
  
