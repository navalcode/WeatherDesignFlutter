import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherTextStyle {
  static final tittleTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.normal
  );
  static final subTittleTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold
  );
  static final bigTemperatureTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 100,
    fontWeight: FontWeight.w100
  );
  
  static final bodyTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.normal
  );

  static final smallBodyTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.normal
  );

  static final smallBodyTranlucidTextStyle = GoogleFonts.roboto(
    color: Color(0x92FFFFFF),
    fontSize: 15,
    fontWeight: FontWeight.bold
  );

}