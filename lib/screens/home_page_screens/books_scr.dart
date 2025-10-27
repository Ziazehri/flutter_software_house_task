import 'package:app/screens/books_seb_scr/fsc_books_scr.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:flutter/material.dart';

class BooksScr extends StatelessWidget {
  const BooksScr({super.key});

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
                      
                    const Text(
                      textAlign: TextAlign.center,
                    "Find the Right Book For \n Your Learning Stage",
                    style: TextStyle(
                      
                      
                        color: Colors.white,
                        
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                                      ),
            
                  const SizedBox(height: 30),
            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.count(
                                childAspectRatio: 1.4,
                                crossAxisCount: 2,
                                shrinkWrap: true,
                                crossAxisSpacing: 25,
                                mainAxisSpacing: 15,
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                              
                                  InkWell(
                                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FscBooksScr(),)),
                                    child: _buildSubjectCard2(context,"assets/images/fscb.png", "FSc Books",
                                    Color(0xFFCAD8EF),
                                       ),
                                  ),
                                  _buildSubjectCard2(context,"assets/images/matricb.png", " Matric Books",
                                      const Color.fromARGB(255, 252, 228, 193),
                                     ),
                                  _buildSubjectCard2(context,"assets/images/middlelb.png", "Middle Level",
                                         Color(0XFFF5ABBC), 
                                    ),
                                         _buildSubjectCard2(context,"assets/images/generalb.png", "General Books",
                                  Color(0xFFFBDCA9E5),
                                      ),
                                        _buildSubjectCard2(context,"assets/images/a.png", "Primary Books",
                                         Color(0XFFC0EABD), 
                                      ),
                                         _buildSubjectCard2(context,"assets/images/books.png","Islamic Books",
                                  Color(0xFF9B73ED),
                                      ),
                                        _buildSubjectCard2(context,"assets/images/drawingp.png", "Story Books",
                                         Color(0XFFFFFFFF), 
                                      ),
                                         _buildSubjectCard2(context,"assets/images/drawingp.png", "Novels",
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
          color: AppColors.primaryA,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.03, // responsive text size
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

}
  
