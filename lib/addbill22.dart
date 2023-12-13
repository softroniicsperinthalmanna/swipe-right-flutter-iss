import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/billkseb23.dart';
class adbill extends StatefulWidget {
  const adbill({super.key});

  @override
  State<adbill> createState() => _adbillState();
}

class _adbillState extends State<adbill> {
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
            Text("ADD ELECTRICITY BILL",style: GoogleFonts.roboto(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),SizedBox(width: 6,),
            Container(width: 32,height: 32,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asetimage/invoice_1956804 1.png"))),)
          ],),
        ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Row(children: [
            Container(height: 25,width: 19,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/locationn.png'))),),SizedBox(width: 6,),
            Text('KERALA',style: GoogleFonts.roboto(color: Colors.white,fontSize: 17.5,fontWeight: FontWeight.w500),)
          ],),
        ),
        SizedBox(height: 40,),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:
          Container(height: 340,width: 337,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12),),color: HexColor('#3CBDBC')),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10           ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Billers in Kerala',style: GoogleFonts.poppins(color: Colors.white),),
                SizedBox(height: 23,),
                InkWell(onTap: (){},
                  child: Row(children: [
                    Container(height: 36,width: 36,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/image 2.png'))),),
                    SizedBox(width: 15,),
                    Text('Kannan Devan Hills Plantations company\nPrivate Limited',style: GoogleFonts.inter(color: Colors.white),)
                  ],),
                ),
                SizedBox(height: 23,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>bilkseb()));
                },
                  child: Row(children: [
                    Container(height: 36,width: 36,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(image: AssetImage('asetimage/image 4.png'))),),
                    SizedBox(width: 15,),
                    Text('Kerala State Electricity Board Ltd. (KSEB\nL)',style: GoogleFonts.inter(color: Colors.white),)
                  ],),
                ),
                SizedBox(height: 23,),
                Row(children: [
                  Container(height: 36,width: 36,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/image 5.png'))),),
                  SizedBox(width: 15,),
                  Text('Lakshwadeep Electricity Department',style: GoogleFonts.inter(color: Colors.white),)
                ],),
                SizedBox(height: 23,),
                Row(children: [
                  Container(height: 36,width: 36,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(image: AssetImage('asetimage/image 7.png'))),),
                  SizedBox(width: 15,),
                  Text('Thrissur Corperation Electricity Departm\nent',style: GoogleFonts.inter(color: Colors.white),)
                ],),
            ],),
          ),
          ),
        )
      ],),
      ),
    );
  }
}
