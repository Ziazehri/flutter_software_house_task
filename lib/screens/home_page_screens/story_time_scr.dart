
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class StoryTimeScr extends StatelessWidget {
  const StoryTimeScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CustomHeader2(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          textAlign: TextAlign.start,
                          "Every Story\nHolds a Lesson",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                           const Text(
                      textAlign: TextAlign.start,
                      "Enjoy a wide collection of\nanimated, stories, and\nadventure.",
                      style: TextStyle(
                        color: AppColors.secondaryC,
                        fontSize: 14,
                      ),
                    ),
                      ],
                    ),
                    
                
                    Image.asset(
                      "assets/images/baby_reading.png",
                      height:190,
                      width: 190,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),

                                const SizedBox(height: 30),
 
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    childAspectRatio: 1.6,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      InkWell(
                        onTap: (){},
                        child: _buildSubjectCard2(
                          "assets/images/dil.png",
                          "Moral Stories",
                          const Color(0xFFC0EABD),
                        ),
                      ),
                      InkWell(
                        onTap: () {    },
                        child: _buildSubjectCard2(
                          "assets/images/happy.png",
                          "Rhymes & Songs",
                          const Color(0xFFFFFFFF),
                        ),
                      ),
                      InkWell(
                           onTap: () {    },

                        child: _buildSubjectCard2(
                          "assets/images/moon.png",
                          "Story Time",
                          const Color(0xFFFDE68A),
                        ),
                      ),
                      _buildSubjectCard2(
                        "assets/images/lion.png",
                        "Animal Stories",
                        const Color(0xFFCAD8EF),
                      ),
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

  //  Updated function: uses asset image instead of icon
  Widget _buildSubjectCard2(
      String imagePath, String title, Color bgColor) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset(
              imagePath,
              height: 40,
              width: 40,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              title,
              style: const TextStyle(
                            color: AppColors.primaryA,

                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
