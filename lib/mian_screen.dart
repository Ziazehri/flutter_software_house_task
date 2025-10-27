import 'package:app/screens/home_page.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
   const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

   int _selectedIndex = 0;

        void  onTapChangeIndex(int index){
          setState(() {
           _selectedIndex = index;

          });          
}

        final List<Widget> _pages = [

          HomePage(), 

            
          Center(
        child: Text("Subjects",style: TextStyle(fontSize: 50),)
      ),

      
          Center(
        child: Text("Early Year",style: TextStyle(fontSize: 50),)
      ),
          Center(
        child: Text("Profile",style: TextStyle(fontSize: 50),)
      ),
  
        ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(child: _pages[_selectedIndex]),
      // body: _pages[_selectedIndex],

      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primaryB,
          // fixedColor: Colors.white,
          fixedColor: Colors.white,
        
          elevation:60,
          
          currentIndex: _selectedIndex,
          onTap: onTapChangeIndex,
          // backgroundColor: Color.fromARGB(0, 250, 250, 250),
          
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home", ),
          BottomNavigationBarItem(icon: Icon(Icons.subject_outlined),label: "Subjects"),
          BottomNavigationBarItem(icon: Icon(Icons.cyclone),label: "Early Year"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        
        
        ]),
      ),
    );
  }
}



