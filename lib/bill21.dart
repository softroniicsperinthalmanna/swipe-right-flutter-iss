import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/addbill22.dart';
import 'package:swiperight/addwaterbill28.dart';
import 'package:swiperight/loan33.dart';
class bill extends StatefulWidget {
  const bill({super.key});

  @override
  State<bill> createState() => _billState();
}

class _billState extends State<bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
        child: Column(children: [
          SizedBox(height: 44,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              InkWell(onTap: (){
                Navigator.pop(context);
              },
                child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
                ),
              ),SizedBox(width: 20,),
              Text("BILLS",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
            ],),
          ),SizedBox(height: 44,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>adbill()));
          },
            child: Container(
              height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: [
                SizedBox(width: 15,),
                Text('ELECTRICITY BILL',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),SizedBox(width: 65,),
                Container(width: 37,height: 37,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/invoice_1956804 1.png'))),)
              ],),
            ),
          ),SizedBox(height: 35,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>watr()));
          },
            child: Container(
              height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: [
                SizedBox(width: 15,),
                Text('WATER BILL',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),SizedBox(width: 115,),
                Container(width: 37,height: 37,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/water-supply_9235347 1.png'))),)
              ],),
            ),
          ),SizedBox(height: 35,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>loan()));
          },
            child: Container(
              height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: [
                SizedBox(width: 15,),
                Text('PAY LOAN',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),SizedBox(width: 128,),
                Container(width: 37,height: 37,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/compensation_8386485 1.png'))),)
              ],),
            ),
          ),SizedBox(height: 40,),
         
        ],),
      ),
    );
  }
}
