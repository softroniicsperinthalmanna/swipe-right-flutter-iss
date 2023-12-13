import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'insurancepayment61.dart';
class insrncepay extends StatefulWidget {
  const insrncepay({super.key});

  @override
  State<insrncepay> createState() => _insrncepayState();
}

class _insrncepayState extends State<insrncepay> {
  var policynum=TextEditingController();
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
            ),
            SizedBox(width: 20,),
            Text("Insurance",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          ],),
        ),SizedBox(height: 30,),
        Container(width: 300,height: 45,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(children: [
          Container(width: 40,height: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(""))),),
          SizedBox(width: 20,),
          Text(""),
          Spacer(),
          TextButton(onPressed: (){}, child: Text("Change")),SizedBox(width: 10,),
        ],),
        ),
        SizedBox(height: 40,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 50,width: 300,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextField(
                controller: policynum,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                  hintText: 'Policy Number',hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            ),SizedBox(height: 3,),
            Text("Please enter 7-8 digit policy number",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.4),)
          ],
        ),
        SizedBox(height: 500,),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>insurncpayments()));
        },
          child: Container(width: 300,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),),color: HexColor("#D9D9D9")),
            child: Center(child: Text("Proceed",style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.6),),),
          ),
        )
      ],),
      ),
    );
  }
}
