import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/mblrechrgeofferlist47.1.dart';
import 'package:swiperight/rechargeplans48.dart';
class rechoffrs extends StatefulWidget {
  const rechoffrs({super.key});

  @override
  State<rechoffrs> createState() => _rechoffrsState();
}

class _rechoffrsState extends State<rechoffrs> {
  var nmephn=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#5CA4A3'),
      child: ListView(
        children: [
        Column(children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(children: [
              InkWell(onTap: (){
                Navigator.pop(context);
              },
                child: Container(height: 38,width: 38,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
                ),
              ),
              SizedBox(width: 20,),
              Text("Mobile Recharge",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
          ),SizedBox(height: 28,),
          Container(height: 60,width: 335,decoration: BoxDecoration(color: HexColor("#D9D9D9"),borderRadius: BorderRadius.all(Radius.circular(17))),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 3,top: 3),
              child: TextField(
                controller: nmephn,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 2,),
                    child: Icon(Icons.search,size: 30,color: Colors.black,),
                  ),
                  suffixIcon: Icon(Icons.call_outlined,size: 30,color: Colors.black,),
                  hintText: 'Enter Name or Mobile Number ',hintStyle: GoogleFonts.poppins(fontSize: 14.6)
                ),
              ),
            ),
          ),
          ),
          SizedBox(height: 30,),
          // Container(width: double.infinity,height: 20,color: HexColor('#D9D9D9'),
          //   child: Padding(
          //   padding: const EdgeInsets.only(right: 259),
          //   child: Center(child: Text('My Number',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),)),
          // ),)
          SizedBox(height: 900,
            child: ListView.builder(
                controller: ScrollController(keepScrollOffset: false),
                itemCount: rechrgoffr.length,itemBuilder: (context,index){
              return Container(height: 110,width: double.infinity,
              child: Column(
                children: [
              rechrgoffr[index]['head'],
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rechargolan()));
                  },
                  child: Container(height: 68,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor("#D9D9D9")),
                  child: Row(children: [
                    SizedBox(width: 5,),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: HexColor("#64D1D0"),
                      child: Text('90',style: GoogleFonts.poppins(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w600),),
                    ),
                    SizedBox(width: 9,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("My Number",style: GoogleFonts.poppins(color: Colors.black),),
                        rechrgoffr[index]['num'],
                        rechrgoffr[index]['date'],

                    ],),
                    SizedBox(width: 4,),
                    Container(height: 24,width: 66,decoration: BoxDecoration(color: HexColor("#64D1D0"),borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Center(child: Text("recharge",style: GoogleFonts.poppins(color: Colors.white,fontSize: 12),),),
                    )

                  ],),
                  ),
                )
              ],),
              );
            }),
          )
        ],)
      ],),

      ),
    );
  }
}
