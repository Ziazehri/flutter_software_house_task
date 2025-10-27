import 'package:app/screens/art_screen.dart';
import 'package:app/screens/books_scr.dart';
import 'package:app/screens/early_years_scr.dart';
import 'package:app/screens/games_page.dart';
import 'package:app/screens/music_scr.dart';
import 'package:app/screens/programming__scr.dart';
import 'package:app/screens/reading_scr.dart';
import 'package:app/screens/story_time_scr.dart';
import 'package:app/screens/tools_scr.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/screens/cartoons_scr.dart';
import 'package:app/widgets/circle_avaters.dart';
import 'package:app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => EarlyYearsScr(),)),
                  child: CircleAvaters(title: 'Early Years',imagePath: "assets/images/early2.png", color:Color(0XFFF87171),)),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => ToolsPage(),)),
                  child: CircleAvaters(title: 'Tools', imagePath: "assets/images/tools2.png", color: Color(0XFF34D399),)),
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:  (context) => GamesPage(),)),
                  child: CircleAvaters(title: 'Games', imagePath: "assets/images/game2.png",color:  Vx.yellow500,)),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => ReadingPage(),)),
                  child: CircleAvaters(title: 'Reading', imagePath: "assets/images/reading2.png", color: Colors.yellow,)),
              ],
                        ),
                  const SizedBox(height: 30),
                        
                  //  Featured Section
                 Row(
                  
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  First) box
                  Expanded(
                    flex: 2, // smaller width
                    child: Container(
                      height: 180,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/featured.png",
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(bottom:50),
                  child: const Text(
                    "Featured",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
                        ],
                      ),
                    ),
                  ),
              
                  //  Second  box
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                                Expanded(
                                  child: const Text(
                                    "Updated 2C Code",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "2D Code has been\nupdated with new\noptions for visual coding.",
                                  style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                                ),
                                const Spacer(),
                                
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryC,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                 
                                    ),
                                    child: const Text("Start Learning"),
                                  ),
                                ),
                      ],
                    ),
                  ),
                ],
              ),
              
              
                        
                  const SizedBox(height: 30),
                        
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
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => BooksScr(),)),
                        
                  child: _buildSubjectCard(context,"assets/images/books.png", "Books",
                  Color(0xFFCAD8EF),
                      ),
                ),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:  (context) => ProgrammingScr(),)),
                        
                        
                  child: _buildSubjectCard(context,"assets/images/programming.png", "Programming",
                      const Color.fromARGB(255, 252, 228, 193),
                    ),
                ),
                InkWell(
                  onTap: () =>  Navigator.push(context, MaterialPageRoute(builder:  (context) => ArtScreen(),)),
                  child: _buildSubjectCard(context,"assets/images/artandd.png","Art & Drawing",
                         Color(0XFFC0EABD), 
                     ),
                ),
              ],
                        ),
                        
                        
                       const SizedBox(height: 20),
                        
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
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => CartoonsScr(),)),
                  child: _buildSubjectCard2(context,"assets/images/cartoons.png", "Cartoons",
                  Color(0XFFFDE68A),
                     ),
                ),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => MusicScr(),)),
                  child: _buildSubjectCard2(context,"assets/images/music.png","Music",
                      Color(0XFFC0EABD),
                            
                   ),
                ),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => StoryTimeScr(),)),
                  child: _buildSubjectCard2(context,"assets/images/stories_time.png", "Stories Time",
                      Color(0XFFFEEED1C4),      ),
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


Widget _buildSubjectCard(BuildContext context, String imagePath, String title, Color bgColor) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Container(
    clipBehavior: Clip.antiAlias,
    width: screenWidth * 0.4, // responsive width
    height: screenHeight * 0.2, // responsive height
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: screenHeight * 0.07, // responsive image container
          child: Center(
            child: Image.asset(
              imagePath,
              height: screenHeight * 0.05,
              width: screenWidth * 0.12,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: screenHeight * 0.04,
          color: Colors.white,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.03, // responsive text size
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
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
