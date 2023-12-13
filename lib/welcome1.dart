import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/login2.dart';
class wlcm extends StatefulWidget {
  const wlcm({super.key});

  @override
  State<wlcm> createState() => _wlcmState();
}

class _wlcmState extends State<wlcm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,
      color: HexColor('#64D1D0'),
      child: Column(children: [
           Padding(
             padding: const EdgeInsets.only(top: 160),
             child: Container(width: 80,height: 140,decoration: BoxDecoration(image: DecorationImage(scale: 100,fit:BoxFit.cover,image: AssetImage('asetimage/Vector 3 (1).png'))),),
           ),SizedBox(height: 10,),
        Text("SWIPERIGHT",style: GoogleFonts.poppins(fontSize: 37,fontWeight: FontWeight.bold),),
        SizedBox(height: 180,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>log()));
          },
          child: Container(height: 55,width: 350,
          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),),
            child: Center(child: Text('Login',style: GoogleFonts.urbanist(color: Colors.white),),),
          ),
        ),SizedBox(height: 20,),
        InkWell(
          onTap: (){},
          child: Container(height: 55,width: 350,
            decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(10)),),
            child: Center(child: Text('Register',style: GoogleFonts.urbanist(color: Colors.black),),),
          ),
        )

      ],),
      ),
    );
  }
}
