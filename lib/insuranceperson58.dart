import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/insuranceprsnlist58.1.dart';

import 'insurancedetails59.dart';
class insrncpersn extends StatefulWidget {
  const insrncpersn({super.key});

  @override
  State<insrncpersn> createState() => _insrncpersnState();
}

class _insrncpersnState extends State<insrncpersn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(height: double.infinity,width: double.infinity,color: HexColor('#5CA4A3'),
      child: ListView(
        children: [
          Column(children: [
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  InkWell(onTap: () {Navigator.pop(context);},
                    child: Container(height: 38, width: 38, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2)),
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.black, weight: 9,),
                    ),),SizedBox(width: 10,),
                  Text('Insurance',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 40,),
            SizedBox(height: 600,
              child: ListView.builder(itemCount: insurer.length,itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>insrncedetls(name: insurer[index]['name'],phnum: insurer[index]['phnum'],other:insurer [index]['other'])));
                  },
                    child: Container(height: 88,width: 330,decoration: BoxDecoration(color: HexColor("#3CBDBC"),borderRadius: BorderRadius.all(Radius.circular(14))),
                    child: Row(children: [
                      SizedBox(width: 15  ,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(insurer[index]['name'],style: GoogleFonts.poppins(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w400),),
                          Text(insurer[index]['phnum'],style: GoogleFonts.poppins(color: Colors.white,fontSize: 17.5,fontWeight: FontWeight.w400),),
                          Text(insurer[index]['other'],style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),)
                      ],),
                      Spacer(),
                      Icon(Icons.notifications_outlined,size: 40,color: Colors.black.withOpacity(0.7)),
                      SizedBox(width: 14,),
                    ],),
                    ),
                  ),
                );}
              ),
            ),

          ],),
        ],
      ),
      ),
    );
  }
}
