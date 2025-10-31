
import 'package:app/screens/early_year_sub_screens/animal_sounds_scr.dart';
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
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    //  Text section
   Flexible(
  flex: 2,
  child: RichText(
    textAlign: TextAlign.start,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: 'Early ',
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: 'Years',
          style: TextStyle(color:Color(0XFFFBBF24)), //  changed color
        ),
        TextSpan(
          text: '\nTools',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
),


    //  Image section
    Flexible(
      flex: 3,
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
                               RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    children: [
      TextSpan(
        text: "Learning ",
        style: TextStyle(color: Colors.white),
      ),
      TextSpan(
        text: "is fun with ",
        style: TextStyle(color: Color(0XFFFBBF24)), // highlighted phrase
      ),
      TextSpan(
        text: "our\nEarly Years Tools!",
        style: TextStyle(color: Colors.white),
      ),
    ],
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
          minimumSize: Size(40, 30),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 102, 66, 202)
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
      bgColor: const Color(0xfffeeed1c4),
    ),
  ),
  InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalSoundsScr(),)),

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
  required String title,
  String? imagePath,
  String? description,
  Color? bgColor,
  Widget? button,
}) {
  return Container(
    decoration: BoxDecoration(
      color: bgColor ?? Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //  Image (optional)
        if (imagePath != null)
          Flexible(
            flex: 1,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
              height: 40,
              width: 40,
            ),
          ),


        //  Title
        Flexible(
          flex: 1,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 62, 74, 141),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),

        //  Description (optional)
        if (description != null)
          Flexible(
            flex: 1,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xffff87171),
                fontSize: 12,
              ),
            ),
          ),

        // Button (optional)
        if (button != null) ...[
          Flexible(
            flex: 1, child: button
            ),
        ],
      ],
    ),
  );
}



}
