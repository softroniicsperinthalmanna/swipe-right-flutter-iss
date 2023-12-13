import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/addnew15.dart';
import 'package:swiperight/allitem11.dart';
import 'package:swiperight/expirelist14.dart';
import 'package:swiperight/expiresoon13.dart';
import 'package:swiperight/settings12.dart';
class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
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
            Text("food & grocery",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
          ],),
        ),SizedBox(height: 44,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>item()));
        },
        child: Container(
          height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(children: [
            SizedBox(width: 15,),
            Text('All Items',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),SizedBox(width: 145,),
            Icon(Icons.arrow_forward_ios_outlined,size: 29,)
          ],),
        ),
        ),SizedBox(height: 35,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>expire()));
        },
          child: Container(
            height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 15,),
              Text('Soon Expire',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),SizedBox(width: 115,),
              Icon(Icons.arrow_forward_ios_outlined,size: 29,)
            ],),
          ),
        ),SizedBox(height: 35,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>explist()));
        },
          child: Container(
            height: 50,width: 295,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 15,),
              Text('Expired',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),SizedBox(width: 160,),
              Icon(Icons.arrow_forward_ios_outlined,size: 29,)
            ],),
          ),
        ),SizedBox(height: 40,),
        Row(children: [
          SizedBox(width: 51,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>additm()));
          },
            child: Container(
              height: 50,width: 215,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: [
                  SizedBox(width: 4,),
                Icon(Icons.add,size: 29,), SizedBox(width: 22,),
                Text('Add Items',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),
              ],),
            ),
          ),SizedBox(width: 40,),
          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>sett()));},child: Container(height: 37,width: 37,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/settings-cog.png'))),))
        ],)
      ],),
      ),
    );
  }
}
