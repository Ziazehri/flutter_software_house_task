import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
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
                      
                    const Text(
                      textAlign: TextAlign.center,
                    "Let's Start Coding!",
                    style: TextStyle(       
                        color: Colors.white,  fontSize: 26,
                        fontWeight: FontWeight.bold),
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
                              
                                  _buildSubjectCard2(context,"assets/images/blockc.png", " Block Coding",
                                  Color(0xFFFEEED1C4),
                                      ),

                                  _buildSubjectCard2(context,"assets/images/pythonb.png", "Python Basics",
                                     Color(0xFFFBDCA9E5),

                                      ),
                            
                                         _buildSubjectCard2(context,"assets/images/webd.png", "Web Development",
                                  Color(0xFFCAD8EF),
                                      ),
                                        _buildSubjectCard2(context,"assets/images/gamed.png", "Game Development",
                                         Color(0XFFC0EABD), 
                                      ),
                                         _buildSubjectCard2(context,"assets/images/mobapp.png", "Mob App Coding",
                                  Color(0xFFF5ABBC),
                                      ),
                                        _buildSubjectCard2(context,"assets/images/aiar.png", "Ai & Robotics",
                                         Color(0XFFFDE68A), 
                                      ),
                                         _buildSubjectCard2(context,"assets/images/js.png", "JavaScript Fun",
                                  Color(0xFFFFFFFF),
                                      ),
                                        _buildSubjectCard2(context,"assets/images/codingq.png", "Coding Quizzes",
                                         Color(0XFF9B73ED), 
                                      ),
                                       
                                ],
                              ),
                            ),    ],           ),
          ),
        )),
    );
  }

   
Widget _buildSubjectCard2(BuildContext context, String imagePath, String title, Color bgColor) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Container(
    clipBehavior: Clip.antiAlias,
    width: screenWidth * 0.4, // responsive width
    height: screenHeight * 0.18, // responsive height
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.015),
          child: Image.asset(
            imagePath,
            height: screenHeight * 0.06,
            width: screenWidth * 0.12,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          title,
          style: TextStyle(
          color: AppColors.primaryA,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.03, // responsive text size
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}


}
  
