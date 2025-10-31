
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
          child: Column( 
            children: [
               const CustomHeader2(isback: true,),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text section
                      Flexible(
                        flex: 2,
                        child:  RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "Explore",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: " FSC\nBooks by \n",
                            style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
                          ),
                          TextSpan(
                            text: "Subject",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                      ),
                  
                      //  Image section
                      Flexible(
                        flex: 2,
                        child: Image.asset(
                          "assets/images/fscmain.png",
                          height: 150,
                          width: double.infinity, // makes it scale nicely
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  )
                  ,
                  
                                      const SizedBox(height: 10),
                                      
                           Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      customButton(
                        text: "Pre-Medical",
                        onPressed: () {},
                        backgroundColor: AppColors.primaryC,
                      ),
                      customButton(
                        text: "Pre-Engineering",
                        onPressed: () {},
                        backgroundColor: AppColors.secondaryB,
                      ),
                      customButton(
                        text: "ICS",
                        onPressed: () {},
                        backgroundColor: const Color.fromARGB(255, 150, 116, 243),
                      ),
                      customButton(
                        text: "I.Com",
                        onPressed: () {},
                        backgroundColor: AppColors.primaryB,
                      ),
                    ],
                  )
                  
                  ,
                  
                                                                      const SizedBox(height: 10),
                  
                   
                      GridView.count(
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
                                  
                            const Color(0xfffbdca9e5),
                          ),
                                 _buildSubjectCard2(
                            "assets/images/eng.png",
                            "English",
                                                      "Class 12\nICS",
                                  
                            const Color(0xfffeeed1c4),
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
                                  
                          const Color(0xfffdcc9e5),
                        ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
Widget _buildSubjectCard2(
  String imagePath,
  String title,
  String subtitle,
  Color bgColor,
) {
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(14),
    ),
    padding: const EdgeInsets.all(12),
    child: Column(
      mainAxisSize: MainAxisSize.min, //  add this
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
        
      children: [
        // Top Row: Image + Texts
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Image.asset(
                imagePath,
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 12),
            Flexible(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.primaryA,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: AppColors.secondaryB,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    
        const SizedBox(height: 5),
    
        // Bottom Row Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.transparent, 
             elevation: 0, 
    shadowColor: Colors.transparent,
    minimumSize: const Size(60, 18),
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(
        color: Colors.black, // border color
        width: 1, // border thickness
      ),
    ),
      ),
      onPressed: () {},
      child: const Text(
    "Read",
    style: TextStyle(
      fontSize: 8,
      color: Colors.black, // text color to match border
    ),
      ),
    ),
    
            ),
            // const SizedBox(width: 3),
            Flexible(
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryC,
                  minimumSize: const Size(90, 18),
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                child: const Text(
                  "Download",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}



Widget customButton({
  required String text,
  required VoidCallback onPressed,
  Color? backgroundColor,
  double fontSize = 12,
  double borderRadius = 20,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), // 👈 add padding
      minimumSize: Size.zero, // 👈 allows it to shrink fully
      tapTargetSize: MaterialTapTargetSize.shrinkWrap, // 👈 removes extra height
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    ),
  );
}








}
