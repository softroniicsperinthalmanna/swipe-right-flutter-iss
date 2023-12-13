import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/login2.dart';
class passchan extends StatefulWidget {
  const passchan({super.key});

  @override
  State<passchan> createState() => _passchanState();
}

class _passchanState extends State<passchan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        SizedBox(height: 140,),
        SizedBox(height: 300,
          child:
          Lottie.asset('asetimage/successfully-done.json'),
        ),
        Text('Password Changed!',style: GoogleFonts.urbanist(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),SizedBox(height: 10,),
        Text('Your password has been changed\n                 successfully.',style: TextStyle(color: HexColor('#8391A1')),),
       SizedBox(height: 30,),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>log()));
          },
          child: Container(height: 55,width: 340,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),),
            child: Center(child: Text('Back to Login',style: GoogleFonts.urbanist(color: Colors.white),),),
          ),
        ),
      ],),
      ),
    );
  }
}
