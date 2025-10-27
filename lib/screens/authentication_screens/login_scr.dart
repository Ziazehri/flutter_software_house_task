import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app/screens/sign_up_screen.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScr extends StatefulWidget {
  const LoginScr({super.key});

  @override
  State<LoginScr> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          const GradientBackground(child: null,),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 380,
              decoration: const BoxDecoration(
                color: Color(0xFFFFB6C1), // light pink
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(110),
                  bottomRight: Radius.circular(110),
                ),
              ),
              child: const Center(
                child: Text(
                  "HEY!\nLOGIN NOW",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // logo
          Positioned(
            top: 340,
            left: MediaQuery.of(context).size.width / 2 - 45, // center
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaBiusoI9hPEXBODhBkDU3_d8zZTd0iatZGg&s",
                ),
              ),
            ),
          ),

          // Login form 
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 150), // space for header and logo

                  // Email field
                  const CustomTextField(hintText: 'Email'),
                  const SizedBox(height: 20),

                  // Password field
                  const CustomTextField(
                    hintText: 'Password',
                    // isPassword: true,
                  ),
                  const SizedBox(height: 30),

                  // Login Button
                  MyButton(
                    bckgclr: const Color.fromARGB(255, 139, 103, 236),
                    frgclr: AppColors.secondaryC,
                    text: "Login",
                    size: const Size(230, 50),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),

                  // Forgot password
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 38, 74, 104),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Divider text
                  Text(
                    "- Or login with -",
                    style: TextStyle(color: AppColors.secondaryC),
                  ),
                  const SizedBox(height: 20),

                  // Social icons row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.google),
                      ),
                      const SizedBox(width: 0),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.facebook).iconColor(Colors.blue),
                      ),
                      const SizedBox(width: 0),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.apple).iconColor(Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
