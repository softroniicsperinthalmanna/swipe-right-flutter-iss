import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/resetpass6.dart';
class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80,right: 280),
          child: Container(width: 50,height: 50,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
            child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 5,)),
          ),
        ),SizedBox(height: 34,),
        Padding(
          padding: const EdgeInsets.only(right: 47),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('OTP Verification',style: GoogleFonts.urbanist(fontWeight: FontWeight.bold,fontSize: 32),),SizedBox(height: 10,),
              Text("Enter the verification code we just sent on your\n email address.",style: TextStyle(color: HexColor('#8391A1')),)
            ],),
        ),SizedBox(height: 55,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          InkWell(onTap: (){},
            child: Container(height: 54,width: 68,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Center(child: Text('5',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),),
            ),
          ),
          InkWell(onTap: (){},
            child: Container(height: 54,width: 68,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Center(child: Text('1',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),),
            ),
          ),
          InkWell(onTap: (){},
            child: Container(height: 54,width: 68,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Center(child: Text('0',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),),
            ),
          ),
          InkWell(onTap: (){},
            child: Container(height: 54,width: 68,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Center(child: Text('',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),),
            ),
          ),
        ],),SizedBox(height: 35,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>restpass()));
          },
          child: Container(height: 55,width: 347,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),),
            child: Center(child: Text('Verify',style: GoogleFonts.urbanist(color: Colors.white),),),
          ),
        ),SizedBox(height: 340,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Didn’t received code?'),
            TextButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>reg()));
            }, child: Text('Resend'))
          ],)
      ],),
      ),
    );
  }
}
