import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/healitm19.dart';
import 'package:swiperight/healtadd20.dart';
import 'package:swiperight/healthlist18.dart';
import 'package:swiperight/medilist17.dart';
class healt extends StatefulWidget {
  const healt({super.key});

  @override
  State<healt> createState() => _healtState();
}

class _healtState extends State<healt> {
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
            Text("MEDICINE",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
          ],),
        ),SizedBox(height: 44,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>medli()));
        },
          child: Container(
            height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 15,),
              Text('All Items',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),SizedBox(width: 145,),
              Icon(Icons.arrow_forward_ios_outlined,size: 29,)
            ],),
          ),
        ),SizedBox(height: 35,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>heallist()));
        },
          child: Container(
            height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 15,),
              Text('Soon Expire',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),SizedBox(width: 115,),
              Icon(Icons.arrow_forward_ios_outlined,size: 29,)
            ],),
          ),
        ),SizedBox(height: 35,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>heaitm()));
        },
          child: Container(
            height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 15,),
              Text('Expired',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),SizedBox(width: 160,),
              Icon(Icons.arrow_forward_ios_outlined,size: 29,)
            ],),
          ),
        ),SizedBox(height: 40,),
        Row(children: [
          SizedBox(width: 51,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>hltadd()));
          },
            child: Container(
              height: 50,width: 215,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: [
                SizedBox(width: 5.5,),
                Icon(Icons.add,size: 29,), SizedBox(width: 24,),
                Text('Add Items',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              ],),
            ),
          ),SizedBox(width: 40,),
          InkWell(onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>sett()));
            },child: Container(height: 37,width: 37,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/settings-cog.png'))),))
        ],)
      ],),
      ),
    );
  }
}
