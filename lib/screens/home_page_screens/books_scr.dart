import 'package:app/screens/books_seb_scr/fsc_books_scr.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/custom_header2.dart';
import 'package:app/widgets/subject_card2.dart';
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
                      
                   RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: "Find the Right Book ",
          style: TextStyle(color: Colors.white),
        ),
        TextSpan(
          text: "for\nYour Learning  ",
          style: TextStyle(color: Color(0XFFFBBF24)), // highlighted part
        ),
        TextSpan(
          text: "Stage",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
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
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FscBooksScr()),
    ),
    child: const SubjectCard2(
      imagePath: "assets/images/fscb.png",
      title: "FSc Books",
      bgColor: Color(0xFFCAD8EF),
    ),
  ),
  const SubjectCard2(
    imagePath: "assets/images/matricb.png",
    title: "Matric Books",
    bgColor: Color.fromARGB(255, 252, 228, 193),
  ),
  const SubjectCard2(
    imagePath: "assets/images/middlelb.png",
    title: "Middle Level",
    bgColor: Color(0xFFF5ABBC),
  ),
  const SubjectCard2(
    imagePath: "assets/images/generalb.png",
    title: "General Books",
    bgColor: Color(0xFFDCA9E5), 
  ),
  const SubjectCard2(
    imagePath: "assets/images/a.png",
    title: "Primary Books",
    bgColor: Color(0xFFC0EABD),
  ),
  const SubjectCard2(
    imagePath: "assets/images/books.png",
    title: "Islamic Books",
    bgColor: Color(0xFF9B73ED),
  ),
  const SubjectCard2(
    imagePath: "assets/images/drawingp.png",
    title: "Story Books",
    bgColor: Color(0xFFFFFFFF),
  ),
  const SubjectCard2(
    imagePath: "assets/images/drawingp.png",
    title: "Novels",
    bgColor: Color(0xFFCAD8EF),
  ),
],

                              ),
                            ),    ],           ),
          ),
        )),
    );
  }
  
}
  
