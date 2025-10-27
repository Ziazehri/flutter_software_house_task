import 'package:app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color bckgclr;
    final Color frgclr;
  final String text;
    final VoidCallback onPressed;
      final Size size; 
   MyButton({super.key, required this.bckgclr, required this.text, required this.onPressed, required this.frgclr, required this.size});

  @override
  Widget build(BuildContext context) {
    return        ElevatedButton(
                          

      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        
        backgroundColor:bckgclr,
        foregroundColor: frgclr,
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text),
    );
  }
}