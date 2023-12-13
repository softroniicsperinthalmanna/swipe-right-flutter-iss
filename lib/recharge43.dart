import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/mobilerecharge44.dart';

import 'dthrecharge51.dart';
class recharge extends StatefulWidget {
  const recharge({super.key});

  @override
  State<recharge> createState() => _rechargeState();
}

class _rechargeState extends State<recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: HexColor('#5CA4A3'),
      child: Column(children: [
        SizedBox(height: 44,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Container(height: 38,width: 38,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
              ),
            ),SizedBox(width: 20,),
            Text("Mobile Recharge",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          ],),
        ),SizedBox(height: 40,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>mobilercrge()));
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Container(width: MediaQuery.of(context).size.width/1.18,height: 115,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor('#3CBDBC')),
            child: Center(child: Text('Mobile Recharge',style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.9),fontSize: 26,fontWeight: FontWeight.w500),)),
            ),
          ),
        ),
        SizedBox(height: 30,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>dthrecharge()));
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Container(width: MediaQuery.of(context).size.width/1.18,height: 115,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor('#3CBDBC')),
              child: Center(child: Text('DTH Recharge',style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.9),fontSize: 26,fontWeight: FontWeight.w500),)),
            ),
          ),
        )
      ],),
      ),
    );
  }
}
