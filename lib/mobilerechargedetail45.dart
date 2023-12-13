import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/rechargepaygp49.dart';
class mblrechargedetl extends StatefulWidget {
   mblrechargedetl({super.key,required this.name,required this.phnumber,required this.sim});
  var name,phnumber,sim;
  @override
  State<mblrechargedetl> createState() => _mblrechargedetlState();
}

class _mblrechargedetlState extends State<mblrechargedetl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#5CA4A3'),
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
            ),
               SizedBox(width: 20,),
               Text("Mobile Recharge",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             ],),
          ),
        SizedBox(height: 70,),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
          child: Container(height: 580,width: 320,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(17)),color: HexColor('#3CBDBC')),
            child: Padding(
              padding: const EdgeInsets.only(left: 12,top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(widget.name,style: GoogleFonts.poppins(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w300),),
                ),
                    SizedBox(height: 22,),
                  Text('Mobile Number',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                  Divider(color: Colors.white,thickness: 0.5,endIndent: 160,),
                  Text(widget.phnumber,style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                       SizedBox(height: 20,),
                  Text('Operator',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                  Divider(color: Colors.white,thickness: 0.5,endIndent: 160,),
                  Text(widget.sim,style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                       SizedBox(height: 20,),
                  Text('Recharged Date',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                  Divider(color: Colors.white,thickness: 0.5,endIndent: 160,),
                  Text("04/05/2023",style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                       SizedBox(height: 20,),
                  Text('Expiry Date',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                  Divider(color: Colors.white,thickness: 0.5,endIndent: 160,),
                  Text("04/05/2023",style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                       SizedBox(height: 20,),
                  Text('Remiding Date',style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                  Divider(color: Colors.white,thickness: 0.5,endIndent: 160,),
                  Text("04/05/2023",style: GoogleFonts.poppins(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),

              ],),
            ),
          ),

        ),
        SizedBox(height: 40,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>rechrgpayy()));
        },
          child: Container(width: 300,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),),color: HexColor("#D9D9D9")),
            child: Center(child: Text("Pay now",style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.6),),),
          ),
        )
        ])
      ) );
  }
}
