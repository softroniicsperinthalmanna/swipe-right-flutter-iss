import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/bill21.dart';
import 'package:swiperight/food10.dart';
import 'package:swiperight/health16.dart';
import 'package:swiperight/insurance57.dart';
import 'package:swiperight/recharge43.dart';
import 'package:swiperight/subscription39.dart';
List<Map<String,dynamic>>homee=[
  {
    'img':AssetImage('asetimage/Vector.png'),
    'text':Text(' Food & Groccery ',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#D9FFE1'),
    'nav':food(),
  },
  {
    'img':AssetImage('asetimage/haert.png'),
    'text':Text('Medicine',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#0D5981'),
   'nav':healt(),
  },
  {
    'img':AssetImage('asetimage/File_Document.png'),
    'text':Text('Bill',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#D6FAFB'),
    'nav':bill()
  },
  {
    'img':AssetImage('asetimage/book.png'),
    'text':Text('Recharge',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#FF8700'),
    'nav':recharge()
  },
  {
    'img':AssetImage('asetimage/image 1.png'),
    'text':Text('Insurance',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#FADEAC'),
    'nav':insurance()
  },
  {
    'img':AssetImage('asetimage/subscription-model_4730393 2.png'),
    'text':Text('Subscription',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#008585'),
    'nav':subscription()
  },
  {
    'img':AssetImage('asetimage/calender.png'),
    'text':Text('Calender',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
    'clr':HexColor('#0D5981')
  },
];

List<Map<String,dynamic>>melist=[
  {
    'img':AssetImage('asetimage/Vector.png'),
    'text':Text(' Food & Groccery ',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),

  },
  {
    'img':AssetImage('asetimage/haert.png'),
    'text':Text('Medicine',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),

  },
  {
    'img':AssetImage('asetimage/File_Document.png'),
    'text':Text('Bill',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
  },
  {
    'img':AssetImage('asetimage/book.png'),
    'text':Text('Recharge',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
  },
  {
    'img':AssetImage('asetimage/image 1.png'),
    'text':Text('Insurance',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
  },
  {
    'img':AssetImage('asetimage/subscription-model_4730393 2.png'),
    'text':Text('Subscription',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w500),),
  },

];
