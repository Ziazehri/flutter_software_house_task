import 'package:app/screens/home_page_screens/art_screen.dart';
import 'package:app/screens/home_page_screens/books_scr.dart';
import 'package:app/screens/home_page_screens/cartoons_scr.dart';
import 'package:app/screens/home_page_screens/music_scr.dart';
import 'package:app/screens/home_page_screens/programming__scr.dart';
import 'package:app/screens/home_page_screens/story_time_scr.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart';

// Import your subject screens
import 'screens/home_page_screens/tools_scr.dart';
import 'screens/home_page_screens/games_page.dart';
import 'screens/home_page_screens/reading_scr.dart';
import 'screens/home_page_screens/early_years_scr.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String? _selectedSubject;
  IconData? _selectedIcon;

  Widget _dynamicPage = CartoonsScr();

  // Function to handle subject selection
  void openDynamicPage(String subject) {

    setState(() {
      _selectedIndex = 1; // switch to the dynamic tab
      _selectedSubject = subject;

      switch (subject) {
         case "Early Years":
          _selectedIcon = Icons.build;
          _dynamicPage = const EarlyYearsScr();
          break;
        case "Tools":
          _selectedIcon = Icons.build;
          _dynamicPage = const ToolsPage();
          break;
        case "Games":
          _selectedIcon = Icons.videogame_asset;
          _dynamicPage = const GamesPage();
          break;
        case "Reading":
          _selectedIcon = Icons.menu_book;
          _dynamicPage = const ReadingPage();
          break;
        case "Books":
          _selectedIcon = Icons.book_sharp;
          _dynamicPage = const BooksScr();
          break;
            case "Programming":
          _selectedIcon = Icons.child_care;
          _dynamicPage = const ProgrammingScr();
          break;
            case "Art & Drawing":
          _selectedIcon = Icons.child_care;
          _dynamicPage = const ArtScreen();
          break;
            case "Cartoons":
          _selectedIcon = Icons.child_care;
          _dynamicPage = const CartoonsScr();
          break;
            case "Music":
          _selectedIcon = Icons.child_care;
          _dynamicPage = const MusicScr();
          break;
             case "Stories Time":
          _selectedIcon = Icons.child_care;
          _dynamicPage = const StoryTimeScr();
          break;
        default:
          _selectedIcon = Icons.apps;
          _dynamicPage = Center(
            child: Text(
              subject,
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(onSubjectSelected: openDynamicPage),
      _dynamicPage,
      EarlyYearsScr(),
   
      const Center(
        child: Text("Profile",
            style: TextStyle(fontSize: 40, color: Colors.white)),
      ),
    ];

   return Scaffold(
  backgroundColor: Colors.black,
  body: SafeArea(child: pages[_selectedIndex]),
  bottomNavigationBar: SizedBox(
    height: 95, //  
    child: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() => _selectedIndex = index);
      },
      selectedFontSize: 15,
      backgroundColor: const Color(0xFFF5ABBC),
      // selectedItemColor: const Color(0xFF371597),
      unselectedItemColor: const Color(0xFFFFFFFF),
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30), 
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(_selectedIcon ?? Icons.category, size: 30),
          label: _selectedSubject ?? 'Cartoons',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.child_friendly, size: 30),
          label: 'Early Year',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30),
          label: 'Profile',
        ),
      ],
    ),
  ),
);

  }
}
