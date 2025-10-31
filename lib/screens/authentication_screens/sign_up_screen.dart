import 'package:app/mian_screen.dart';
import 'package:app/themes/app_theme.dart';
import 'package:app/themes/gradiant_bkg.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.only(left: 32,right: 32),
          child: Center(

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              Row(
                children: [
                                                   Image.asset(
  "assets/images/logo.png",
  height: 110,
  width: 110,
  fit: BoxFit.cover,
),
               
                ],
              ),
              SizedBox(height: 10,),

                                 Image.asset(
  "assets/images/login.png",
  height: 210,
  width: 190,
  fit: BoxFit.cover,
),

            
                    SizedBox(height: 20,),
              
                Text("Create Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                    SizedBox(height: 20,),
              
                CustomTextField(hintText: 'Name',),
                    SizedBox(height: 20,),
              
                          CustomTextField(hintText: 'Email',),
                              SizedBox(height: 20,),
              
                CustomTextField(hintText: 'Password',),
                    SizedBox(height: 20,),
              
              
                CustomTextField(hintText: 'Confirm Passroed',),
                    SizedBox(height: 30,),    
                    MyButton(
                      bckgclr: const Color.fromARGB(255, 139, 103, 236),
                    frgclr: AppColors.secondaryC,
                     text: "Signup", onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen(),)), size: Size(230, 50),),
                     SizedBox(height: 20,),
                     Text("-or login with-",style: TextStyle(color:AppColors.secondaryC)),
                     SizedBox(height: 20,),
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.google).iconColor(Colors.green),
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
        )),
    );
  }
}