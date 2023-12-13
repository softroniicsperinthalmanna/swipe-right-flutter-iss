import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dthpayment55.dart';
class dthsubscriber extends StatefulWidget {
  const dthsubscriber({super.key});

  @override
  State<dthsubscriber> createState() => _dthsubscriberState();
}

class _dthsubscriberState extends State<dthsubscriber> {
  var subsriberid=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,height: double.infinity,color: HexColor('#64D1D0'),
        child: Column(children: [
          SizedBox(height: 44,),
          Padding(
            padding: const EdgeInsets.only(left: 20), child: Row(children: [
            InkWell(onTap: () {Navigator.pop(context);},
              child: Container(height: 38, width: 38, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2)),
                child: Icon(Icons.arrow_back_ios_new, color: Colors.black, weight: 9,),
              ),
            ),
            SizedBox(width: 20,),
            Text("DTH Recharge", style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
          ],),
          ),
          SizedBox(height: 50,),
          Container(height: 100,width: 360,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor("#96F4F3")),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 10 ),
              child: TextField(
                controller: subsriberid,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Subscriber ID / Registered Mobile Number',
                  hintStyle: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15)
                ),
              ),
            ),
            Text("Press the menu button on your Airtel DTH remote\nand select My Account to get your subscriber ID ",style: GoogleFonts.poppins(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w400),),
          ],),
          ),
          SizedBox(height: 500,),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>dthpayment()));
          },
            child: Container(width: 255,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16),),
                  color: HexColor("#96F4F3")),
              child: Center(child: Text("CONFIRM", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 18.6),),),
            ),
          ),
        ],),
      ),
    );
  }
}
