import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
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
            child: Column(
            children: [

              CustomHeader2(),
       

                   Image.asset(
  "assets/images/readingmain.png",
  height: 160,
  width: 160,
  fit: BoxFit.cover,
),



                    const Text(
                      textAlign: TextAlign.center,
                    "Discover Stories & \n Word Games",
                    style: TextStyle(
                      
                      
                        color: Colors.white,
                        
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                                      ),
                  const SizedBox(height: 10),

                     const Text(
                      textAlign: TextAlign.center,
                    "Read , explore and grow your vocabolary.",
                    style: TextStyle(                 
                        color: AppColors.secondaryC,  fontSize: 14,
                        ),
                                      ),
                  const SizedBox(height: 30),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.count(
                                childAspectRatio: 1.2,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 30,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                              
                                  _buildSubjectCard2(context, "assets/images/readas.png", " Read-Aloud \n Stories",
                                  Color(0xFFCAD8EF),
                                    ),
                                  _buildSubjectCard2(context, "assets/images/pictureb.png", " Picture\nBook",
                                      const Color.fromARGB(255, 252, 228, 193),
                                     ),
                                  _buildSubjectCard2(context, "assets/images/slightw.png", "Slight\nWords",
                                         Color(0XFFC0EABD), 
                                    ),
                                         _buildSubjectCard2(context, "assets/images/story.png","Story Builder",
                                  Color(0xFFCAD8EF),
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
            fontWeight: FontWeight.bold,
            color: AppColors.primaryA,
            fontSize: screenWidth * 0.03, // responsive text size
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}


}
  
