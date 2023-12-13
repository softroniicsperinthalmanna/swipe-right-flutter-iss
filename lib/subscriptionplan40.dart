import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/subscriptiondisney42.dart';
import 'package:swiperight/subsriptionplans41.dart';
class subplan extends StatefulWidget {
  const subplan({super.key});

  @override
  State<subplan> createState() => _subplanState();
}

class _subplanState extends State<subplan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: HexColor('#64D1D0'),
      child: SingleChildScrollView(
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
              Text("Subscription",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text("Select Your Plan",style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          ),SizedBox(height: 5,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>subplannum()));
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Container(height: 360,width: MediaQuery.of(context).size.width/1.2,decoration: BoxDecoration(color: HexColor("#3CBDBC"),borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Disney+Hotstar Mobile\n(Ad-Supported plan) (1 year)",style: GoogleFonts.poppins(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                    SizedBox(height: 25,),
                    Text("Login to any 1 device at a time\n(the previous logged in\ndevice will be auto\nlogged out when you\nlog into a second device)\nPaid content can be\nviewed only on a Mobile device\n(you can continue to watch free\ncontenton all platforms, including\nWeb and Living Room devices)",style: GoogleFonts.poppins(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400))
                ],),
              ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>subdisny()));
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Container(height: 360,width: MediaQuery.of(context).size.width/1.2,decoration: BoxDecoration(color: HexColor("#3CBDBC"),borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Disney+Hotstar Super\n(Ad-Supported plan) (1 year)",style: GoogleFonts.poppins(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                      SizedBox(height: 25,),
                      Text("Login to any 2 devices at a time\n(logging into any additional\ndevice will result in 1 of the\npreviously logged in device to be\nauto\nlogged out) All content can be\nenjoyed on any of our supported\nplatforms (Mobile, Web and\nsupported Living Room devices)",style: GoogleFonts.poppins(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400))
                    ],),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
        ],),
      ),
      ),
    );
  }
}
