
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
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
            child: Column(
              children: [
                const CustomHeader2(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      textAlign: TextAlign.start,
                      "Color Your\nWorld — The\nArt Way",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                
                    Image.asset(
                      "assets/images/art.png",
                      height: 150,
                      width: 210,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),

                                const SizedBox(height: 30),
                                     const Text(
                      textAlign: TextAlign.start,
                      "Your Dogital ToolBox",
                      style: TextStyle(
                        fontSize: 20,
                                                color: Colors.white,

                                                fontWeight: FontWeight.bold,

                      ),
                    ),

                                     const Text(
                      textAlign: TextAlign.center,
                      "Choose from brushes, colors, shapes &\nmore to start drawing.",
                      style: TextStyle(
                        color: AppColors.secondaryC,
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
                        InkWell(
                          onTap: (){},
                          child: _buildSubjectCard2(
                            "assets/images/brush.png",
                            "Paint Brush",
                          "Create freehand\nart with smooth\nstrokes",
                    
                            const Color(0xFFCAD8EF),
                          ),
                        ),
                        InkWell(
                          onTap: () {    },
                          child: _buildSubjectCard2(
                            "assets/images/waterc.png",
                            "Rhymes & Songs",
                                "Select colors\nand gradients\neasily",
                    
                            const Color(0xFFE5F4E4),
                          ),
                        ),
                        InkWell(
                             onTap: () {    },
                    
                          child: _buildSubjectCard2(
                            "assets/images/eraser.png",
                            "Eraser Tool",
                              "Fix mistakes\nwith a smart\neraser",
                    
                            const Color(0xFFFEEED1C4),
                          ),
                        ),
                        _buildSubjectCard2(
                          "assets/images/shine.png",
                          "Magic Pen",
                          "Fun tool with\nglow effects and\nglitter",
                          const Color(0xFFFFFFFF),
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
    );
  }

  //
Widget _buildSubjectCard2(
  String imagePath,
  String title,
  String description,
  Color bgColor,
) {
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(14),
    ),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imagePath,
          height: 50,
          width: 50,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 12),
        Text(
          
          title,
          style: const TextStyle(
            color: AppColors.primaryA,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 0),
        Text(
          description,
          style: const TextStyle(
            color: AppColors.primaryA,

            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

}
