
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class FscBooksScr extends StatelessWidget {
  const FscBooksScr({super.key});

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
                      "Explore FSC\nBooks by\nSubject",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                
                    Image.asset(
                      "assets/images/fscmain.png",
                      height:150,
                      width: 170,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
            
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: customButton(text: "Pre-Medical", onPressed: (){},backgroundColor: AppColors.primaryC)),
                                                                        Expanded(child: customButton(text: "Pre-Engineering", onPressed: (){},backgroundColor: AppColors.secondaryB)),
                                                                                                            Expanded(child: customButton(text: "ICS", onPressed: (){},backgroundColor: const Color.fromARGB(255, 150, 116, 243))),
                                                                                                                                                Expanded(child: customButton(text: "I.COM", onPressed: (){},backgroundColor: AppColors.primaryB)),

                                  ],
                                ),
                                                                const SizedBox(height: 10),

             
                Expanded(
                  child: GridView.count(
                    childAspectRatio: 1.5,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 15,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      InkWell(
                        onTap: (){},
                        child: _buildSubjectCard2(
                          "assets/images/phy.png",
                          "Physics",
                          "Class 11\nPre-Medical",
                          const Color(0xFFC0EABD),
                        ),
                      ),
                      InkWell(
                        onTap: () {    },
                        child: _buildSubjectCard2(
                          "assets/images/bio.png",
                          "Biology",
                                                    "Class 12\nPre-Medical",
                              
                          const Color(0xFFFFFFFF),
                        ),
                      ),
                      InkWell(
                           onTap: () {    },
                              
                        child: _buildSubjectCard2(
                          "assets/images/math.png",
                          "Math",
                                                    "Class 11\nPre-Engineering",
                              
                          const Color(0xFFFDE68A),
                        ),
                      ),
                      _buildSubjectCard2(
                        "assets/images/chem.png",
                        "Chemistry",
                                                  "Class 12\nPre-Engineering",
                              
                        const Color(0xFFCAD8EF),
                      ),
                             _buildSubjectCard2(
                        "assets/images/comp.png",
                        "Computer",
                                                  "Class 11\nICS",
                              
                        const Color(0xFFFBDCA9E5),
                      ),
                             _buildSubjectCard2(
                        "assets/images/eng.png",
                        "English",
                                                  "Class 12\nICS",
                              
                        const Color(0xFFFEEED1C4),
                      ),
                             _buildSubjectCard2(
                        "assets/images/acc.png",
                        "Accounting",
                                                  "Class 11\nI.COM",
                              
                        const Color(0xFFD6E7F7),
                      ),
                             _buildSubjectCard2(
                      "assets/images/bank.png",
                      "Banking",
                                                "Class 12\nI.COM",
                              
                      const Color(0xFFFDCC9E5),
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
      String imagePath, String title,String Subtitle, Color bgColor) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    imagePath,
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              // const SizedBox(height: 20),
                 Column(
           
                    children: [
                      Text(
                                      title,
                                      style: const TextStyle(
                                  color: AppColors.primaryA,
                                    
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),

                               
                                    Text(
                                      Subtitle,
                                      style: const TextStyle(
                                  color: AppColors.secondaryB,
                                    
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                    ],
                  ),

              // ElevatedButton(onPressed: (){}, child: Text("Read"))
            
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    ElevatedButton(
      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,

        minimumSize: const Size(80, 35), // overall button size
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), // less padding
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // remove extra space
      ),
      onPressed: () {},
      child: const Text(
        "Read",
        style: TextStyle(fontSize: 12),
      ),
    ),
    const SizedBox(width: 8), // small space between buttons
    ElevatedButton(
      style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryC,

                minimumSize: const Size(90, 35), // overall button size

        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {},
      child: const Text(
        "Download",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    ),
  ],
)

        ],
      ),
    );
  }



// Custom Button
Widget customButton({
  required String text,
  required VoidCallback onPressed,
  Color? backgroundColor,
  double fontSize = 14,
  double borderRadius = 20,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      minimumSize: const Size(0, 40),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        // fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    ),
  );
}






}
