import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card1.dart';
import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          text: "Learn ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Through",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: " Playing",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
),
                  const SizedBox(height: 30),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.count(
                                childAspectRatio: 1.1,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 30,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                              
                                  SubjectCard(imagePath:  "assets/images/matchingg.png",title:  "Matching\nGames",
                                 bgColor:  Color(0xfffeeed1c4),
                                   ),
                                  SubjectCard(imagePath: "assets/images/memoryg.png", title: "Memory\nGames",
                                 bgColor: Color(0xfffbdca9e5
) ,
                                     ),
                                  SubjectCard(imagePath: "assets/images/puzzleb.png",title:  "Puzzle\nBuilder",
                                       bgColor:   Color(0XFFB08484), 
                                     ),
                                         SubjectCard(imagePath: "assets/images/words.png",title:  "Word\nScramble",
                                 bgColor:  Color(0xFF390EAE),
                                      ),
                                ],
                              ),
                            ),    ],           ),
          ),
        )),
    );
  }

}
  
