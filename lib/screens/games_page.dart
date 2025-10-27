import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
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
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: const Text(
                        textAlign: TextAlign.center,
                      "Learn Through Play",
                      style: TextStyle(
                        
                        
                          color: Colors.white,
                          
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
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
                              
                                  _buildSubjectCard(context,"assets/images/matchingg.png", "Matching\nGames",
                                  Color(0xFFFEEED1C4),
                                   ),
                                  _buildSubjectCard(context,"assets/images/memoryg.png", "Memory\nGames",
                                    Color(0xFFFBDCA9E5
) ,
                                     ),
                                  _buildSubjectCard(context,"assets/images/puzzleb.png", "Puzzle\nBuilder",
                                         Color(0XFFB08484), 
                                     ),
                                         _buildSubjectCard(context,"assets/images/words.png", "Word\nScramble",
                                  Color(0xFF390EAE),
                                      ),
                                ],
                              ),
                            ),    ],           ),
          ),
        )),
    );
  }

Widget _buildSubjectCard(BuildContext context, String imagePath, String title, Color bgColor) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Container(
    clipBehavior: Clip.antiAlias,
    width: screenWidth * 0.4, // responsive width
    height: screenHeight * 0.2, // responsive height
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: screenHeight * 0.10, // responsive image container
          child: Center(
            child: Image.asset(
              imagePath,
              height: screenHeight * 0.05,
              width: screenWidth * 0.12,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: screenHeight * 0.07,
          color: Colors.white,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.primaryA,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.03, // responsive text size
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}

}
  
