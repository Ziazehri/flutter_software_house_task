import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card2.dart';
import 'package:flutter/material.dart';

class ProgrammingScr extends StatelessWidget {
  const ProgrammingScr({super.key});

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
                      
                   
                   
                        RichText(
                          
    textAlign: TextAlign.start,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Let's ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Start ",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: "Coding!",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
            
                  const SizedBox(height: 10),
            
                              const Text(
                      textAlign: TextAlign.center,
                    "Explore games, tutorials, and fun challenges\n to learn real-world programming.",
                    style: TextStyle(       
                        color: Colors.white,  fontSize: 14,
                        ),
                                      ),
            
                  const SizedBox(height: 30),
            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.count(
                                childAspectRatio: 1.9,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                physics: const NeverScrollableScrollPhysics(),
                             children: [
  const SubjectCard2(
    imagePath: "assets/images/blockc.png",
    title: "Block Coding",
    bgColor: Color(0xFFD1C4E9), 
  ),
  const SubjectCard2(
    imagePath: "assets/images/pythonb.png",
    title: "Python Basics",
    bgColor: Color(0xFFDCA9E5), 
  ),
  const SubjectCard2(
    imagePath: "assets/images/webd.png",
    title: "Web Development",
    bgColor: Color(0xFFCAD8EF),
  ),
  const SubjectCard2(
    imagePath: "assets/images/gamed.png",
    title: "Game Development",
    bgColor: Color(0xFFC0EABD),
  ),
  const SubjectCard2(
    imagePath: "assets/images/mobapp.png",
    title: "Mob App Coding",
    bgColor: Color(0xFFF5ABBC),
  ),
  const SubjectCard2(
    imagePath: "assets/images/aiar.png",
    title: "AI & Robotics",
    bgColor: Color(0xFFFDE68A),
  ),
  const SubjectCard2(
    imagePath: "assets/images/js.png",
    title: "JavaScript Fun",
    bgColor: Color(0xFFFFFFFF),
  ),
  const SubjectCard2(
    imagePath: "assets/images/codingq.png",
    title: "Coding Quizzes",
    bgColor: Color(0xFF9B73ED),
  ),
],

                              ),
                            ),    ],           ),
          ),
        )),
    );
  }

   


}
  
