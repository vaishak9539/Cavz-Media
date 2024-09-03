
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextDecoration? decoration;
  final Color? decorationColor;
   CustomText({
    required this.text,
    required this.size,
    required this.weight,
    required this.color,
    this.decoration,
    this.decorationColor,
    super.key
   });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lexend(
        textStyle: TextStyle(
          fontSize: size,
          fontWeight: weight,
          color: color, 
          decoration: decoration  ,
          decorationColor: decorationColor    
        )
      ),
      
    );
  }
}