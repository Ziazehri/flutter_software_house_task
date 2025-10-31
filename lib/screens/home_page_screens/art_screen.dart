
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card_3.dart';
import 'package:flutter/material.dart';

class ArtScreen extends StatelessWidget {
  const ArtScreen({super.key});

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
                    children: [
                        Expanded(
                          child: RichText(
                            
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Color Your\n",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: "World — The\n",
                                    style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
                                  ),
                                  TextSpan(
                                    text: "Art Way",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                        ),
                      
                  
                      Expanded(
                        child: Image.asset(
                          "assets/images/art.png",
                          height: 150,
                          width: 210,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
              
                                  const SizedBox(height: 30),
                                RichText(
                          
    textAlign: TextAlign.start,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Your ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "Digital",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: " Toolbox",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ),
                                    const SizedBox(height: 10),

              
                                       const Text(
                        textAlign: TextAlign.center,
                        "Choose from brushes, colors, shapes &\nmore to start drawing.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10,),
               
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Expanded(
                      child: GridView.count(
                        childAspectRatio: 0.9,
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 20,
                        physics: const NeverScrollableScrollPhysics(),
                      children: [
  SubjectCard3(
    imagePath: "assets/images/brush.png",
    title: "Paint Brush",
    description: "Create freehand\nart with smooth\nstrokes",
    bgColor: const Color(0xFFCAD8EF),
  ),
  SubjectCard3(
    imagePath: "assets/images/waterc.png",
    title: "Rhymes & Songs",
    description: "Select colors\nand gradients\neasily",
    bgColor: const Color(0xFFE5F4E4),
  ),
  SubjectCard3(
    imagePath: "assets/images/eraser.png",
    title: "Eraser Tool",
    description: "Fix mistakes\nwith a smart\neraser",
    bgColor: const Color(0xfffeeed1c4),
  ),
  SubjectCard3(
    imagePath: "assets/images/shine.png",
    title: "Magic Pen",
    description: "Fun tool with\nglow effects and\nglitter",
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


}
