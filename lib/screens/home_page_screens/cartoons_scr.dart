import 'package:app/screens/cartoons_sub_sreen/cartn_adventure_scr.dart';
import 'package:app/screens/cartoons_sub_sreen/funny_crt_scr.dart';
import 'package:app/screens/cartoons_sub_sreen/learning_carton_scr.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card2.dart';
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


                    RichText(
                          
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Enjoy Learning\n",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Through ",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: "Cartoons",
          style: TextStyle(color: Colors.white),
        ),
      ],
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
                     child: SubjectCard2(
                         imagePath:  "assets/images/lc.png",
                          title: "Learning\nCartoons",
                         bgColor:  const Color(0xfffeeed1c4),
                        ),
                      ),
                      SubjectCard2(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FunnyCartoonsScr(),)),
                        imagePath: "assets/images/fc.png",
                        title: "Funny Cartoons",
                       bgColor:  const Color(0xFFFCE4C1),
                      ),
                    SubjectCard2(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FunnyCartoonsScr(),)),
                        imagePath: "assets/images/mst.png",
                        title: "Moral Storiess",
                       bgColor:  const Color(0xFFC0EABD),
                      ),
                    SubjectCard2(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CartnAdventureScr(),)),
                        imagePath: "assets/images/cadven.png",
                        title: "Cartoon\nAdventures",
                       bgColor:  const Color(0xFFCAD8EF),
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


}
