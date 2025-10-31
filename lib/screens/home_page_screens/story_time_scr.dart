
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card2.dart';
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
                const CustomHeader2(isback: false,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           RichText(
                            
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "Every Story \n",
                                style: TextStyle(color: Colors.white),
                              ),
                              TextSpan(
                                text: "Holds ",
                                style: TextStyle(color: Colors.white ), // highlighted part
                              ),
                              TextSpan(
                                text: "a Lesson",
                                style: TextStyle(color: Color(0XFFFBBF24)),
                              ),
                            ],
                          ),
                        ),
                             const Text(
                        textAlign: TextAlign.start,
                        "Enjoy a wide collection of animated, stories, and\nadventure.",
                        style: TextStyle(
                          color: AppColors.secondaryC,
                          fontSize: 14,
                        ),
                      ),
                        ],
                      ),
                    ),
                    
                
                    Expanded(
                      child: Image.asset(
                        "assets/images/baby_reading.png",
                        height:190,
                        width: 190,
                        fit: BoxFit.cover,
                      ),
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
  SubjectCard2(
    imagePath: "assets/images/dil.png",
    title: "Moral Stories",
    bgColor: const Color(0xFFC0EABD),
    onTap: () {
      // Add your navigation or action
    },
  ),
  SubjectCard2(
    imagePath: "assets/images/happy.png",
    title: "Rhymes & Songs",
    bgColor: const Color(0xFFFFFFFF),
    onTap: () {
      // Add your navigation or action
    },
  ),
  SubjectCard2(
    imagePath: "assets/images/moon.png",
    title: "Story Time",
    bgColor: const Color(0xFFFDE68A),
    onTap: () {
      // Add your navigation or action
    },
  ),
  const SubjectCard2(
    imagePath: "assets/images/lion.png",
    title: "Animal Stories",
    bgColor: Color(0xFFCAD8EF),
  ),
]

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
