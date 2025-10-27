import 'package:app/screens/cartoons_sub_sreen/learning_carton_scr.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class CartoonsScr extends StatelessWidget {
  const CartoonsScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const CustomHeader2(),


                const Text(
                  textAlign: TextAlign.center,
                  "Enjoy Learning\nThrough Cartoons",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                const Text(
                  textAlign: TextAlign.center,
                  "Enjoy short, engaging cartoons that teach\nvalues, lessons, and fun facts in a joyful way.",
                  style: TextStyle(
                    color: AppColors.secondaryC,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  "assets/images/cartoonmain.png",
                  height: 200,
                  width: 350,
                  fit: BoxFit.cover,
                ),

                                const SizedBox(height: 30),


                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    childAspectRatio: 1.4,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LearningCartonScr(),)),
                        child: _buildSubjectCard2(
                          "assets/images/lc.png",
                          "Learning\nCartoons",
                          const Color(0xFFFEEED1C4),
                        ),
                      ),
                      _buildSubjectCard2(
                        "assets/images/fc.png",
                        "Funny Cartoons",
                        const Color(0xFFFCE4C1),
                      ),
                      _buildSubjectCard2(
                        "assets/images/mst.png",
                        "Moral Storiess",
                        const Color(0xFFC0EABD),
                      ),
                      _buildSubjectCard2(
                        "assets/images/cadven.png",
                        "Cartoon\nAdventures",
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
