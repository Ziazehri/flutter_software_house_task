import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/subject_card1.dart';
import 'package:app/widgets/circle_avaters.dart';
import 'package:app/widgets/home_scr_header.dart';
import 'package:app/widgets/subject_card2.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
    final Function(String) onSubjectSelected;
   const HomePage({super.key,  required this.onSubjectSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  Header
                  const Header(),
                  const SizedBox(height: 30),
                        
                  //  Categ Row
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              InkWell(
  onTap: () => onSubjectSelected("Early Years"),
  child: CircleAvaters(
    title: 'Early Years',
    imagePath: "assets/images/early2.png",
    color: Color(0XFFF87171),
  ),
),
InkWell(
  onTap: () => onSubjectSelected("Tools"),
  child: CircleAvaters(
    title: 'Tools',
    imagePath: "assets/images/tools2.png",
    color: Color(0XFF34D399),
  ),
),
InkWell(
  onTap: () => onSubjectSelected("Games"),
  child: CircleAvaters(
    title: 'Games',
    imagePath: "assets/images/game2.png",
    color: Vx.yellow500,
  ),
),
InkWell(
  onTap: () => onSubjectSelected("Reading"),
  child: CircleAvaters(
    title: 'Reading',
    imagePath: "assets/images/reading2.png",
    color: Colors.yellow,
  ),
),

              ],
                        ),
                  const SizedBox(height: 30),
                        
                  //  Featured Section
        
              
              
                        Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    //  Left Box - Featured
    Flexible(
      flex: 2, // smaller width
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/featured.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            //  Featured text perfectly aligned to bottom center
            Positioned(
              bottom: 45,
              left: 0,
              right: 0,
              child: Center(
                child: const Text(
                  "Featured",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),

    //  Right Box - Update Info
   Flexible(
  flex: 3,
  child: ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 300),
    child: Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Prevents overflow
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Updated 2C Code",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0XFF371597),
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            "2D Code has been updated with new options for visual coding.",
            style: TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 133, 99, 224),
              height: 1.3, //  Better line spacing
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFFBBF24),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              child: const Text("Start Learning"),
            ),
          ),
        ],
      ),
    ),
  ),
)

  ],
)
,
                  const SizedBox(height: 10),
                        
                  //  Browse Subjects Section
                  const Text(
                    "Browse Subjects",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                        
                        GridView.count(
              childAspectRatio: 1.1,
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                InkWell(
                        onTap: () => onSubjectSelected("Books"),
                        
                  child: SubjectCard(imagePath: "assets/images/books.png", title: "Books", bgColor:  const Color.fromARGB(255, 252, 228, 193),)
                ),
                InkWell(
                  onTap:() => onSubjectSelected("Programming"),
                        
                        
                  child: SubjectCard(imagePath: "assets/images/programming.png",title: "Programming",
                    bgColor:   const Color.fromARGB(255, 252, 228, 193),
                    ),
                ),
                InkWell(
                  onTap: () => onSubjectSelected("Art & Drawing"),
                  child: SubjectCard(imagePath:"assets/images/artandd.png",title: "Art & Drawing",
                    bgColor:  Color(0XFFC0EABD), 
                     ),
                ),
              ],
                        ),
                        
                        
                       const SizedBox(height: 10),
                        
                    const Text(
                    "Take A Fun Break",
                    style: TextStyle(
                        color: Colors.white,
                    fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                        
              GridView.count(
              childAspectRatio: 1.1,
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(),
        children: [
  SubjectCard2(
    imagePath: "assets/images/cartoons.png",
    title: "Cartoons",
    bgColor: const Color(0xFFFDE68A),
    onTap: () => onSubjectSelected("Cartoons"),
  ),
  SubjectCard2(
    imagePath: "assets/images/music.png",
    title: "Music",
    bgColor: const Color(0xFFC0EABD),
    onTap:() => onSubjectSelected("Music"),
  ),
  SubjectCard2(
    imagePath: "assets/images/stories_time.png",
    title: "Stories Time",
    bgColor: const Color(0xFFD1C4E9),
    onTap: () => onSubjectSelected("Stories Time"),  
  ),
],


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
