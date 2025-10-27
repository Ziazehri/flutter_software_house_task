
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class EarlyYearsScr extends StatelessWidget {
  const EarlyYearsScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomHeader2(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        textAlign: TextAlign.start,
                        "Early Years\nTools",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                  
                      Expanded(
                        child: Image.asset(
                          "assets/images/early.png",
                          height: 150,
                          width: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
              
                                  // const SizedBox(height: 30),
                                       const Text(
                        textAlign: TextAlign.center,
                        "Learning is fun with our\nEarly Years Tools!",
                        style: TextStyle(
                          fontSize: 20,
                                                  color: Colors.white,
              
                                                  fontWeight: FontWeight.bold,
              
                        ),
                      ),
              
                                       const Text(
                        textAlign: TextAlign.center,
                        "Interactive tools to help kids grow through\nplay, creativity, and curiosity.",
                        style: TextStyle(
                          color: AppColors.secondaryC,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10,),
               
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Expanded(
                      child: GridView.count(
                        childAspectRatio: 1.0,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 20,
                        physics: const NeverScrollableScrollPhysics(),
                      children: [
  InkWell(
    onTap: () {},
    child: _buildSubjectCard2(
      imagePath: "assets/images/a.png",
      title: "Alphabet Tracking",
      description: "Trace letters with\nfun animations",
      bgColor: const Color(0xFFCAD8EF),
    ),
  ),
  InkWell(
    onTap: () {},
    child: _buildSubjectCard2(
      title: "Counting Bubbles",
      button:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 179, 159, 235)
        ),
    onPressed: () {},
    child: const Text("Start"),
  ),
      description: "Pop and count the\nbubbles",
      bgColor: const Color(0xFFE5F4E4),
    ),
  ),
  InkWell(
    onTap: () {},
    child: _buildSubjectCard2(
      imagePath: "assets/images/matcher.png",
      title: "Color Matcher",
      description: "Match colors\nusing drag & drop",
      bgColor: const Color(0xFFFEEED1C4),
    ),
  ),
  InkWell(
        onTap: () {},

    child: _buildSubjectCard2(
      imagePath: "assets/images/bhalo.png",
      title: "Animal Sounds",
      description: "Tap animals to\nhear their sounds",
      bgColor: const Color(0xFFFFFFFF),
    ),
  ),
  _buildSubjectCard2(
    imagePath: "assets/images/shapes.png",
    title: "Shape Sorter",
    description: "Learn shapes by\nsorting puzzles",
    bgColor: const Color(0xFFFFFFFF),
  ),
  _buildSubjectCard2(
    imagePath: "assets/images/puzzle.png",
    title: "My First Puzzle",
    description: "Solve beginner-level jigsaw puzzles",
    bgColor: const Color(0xFFFFFFFF),
  ),
],

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 Widget _buildSubjectCard2({
  String? imagePath, // optional
  required String title,
  required String description,
  Color? bgColor,
  Widget? button, // optional
}) {
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: bgColor ?? Colors.white, // default if null
      borderRadius: BorderRadius.circular(14),
    ),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //  Optional Image
        if (imagePath != null) ...[
          Image.asset(
            imagePath,
            height: 50,
            width: 50,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 12),
        ],

        //  Title
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.primaryA,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        // const SizedBox(height: 4),

        //  Description
        Expanded(
          child: Text(
            description,
            style: const TextStyle(
              color: AppColors.secondaryB,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // 
        //Optional Button
        if (button != null) ...[
          const SizedBox(height: 10),
          Expanded(child: button),
        ],
      ],
    ),
  );
}


}
