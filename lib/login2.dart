import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/bottombar.dart';
import 'package:swiperight/home8.dart';
import 'package:swiperight/register3.dart';

import 'forgotpass4.dart';
class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  var email=TextEditingController();
  var pass=TextEditingController();
  bool too=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 90,right: 280),
            child: Container(width: 50,height: 50,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
            child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 5,)),
            ),
          ),SizedBox(height: 34,),
          Padding(
            padding: const EdgeInsets.only(right: 51),
            child: Text('Welcome back! Glad \nto see you, Again!',style: GoogleFonts.urbanist(fontWeight: FontWeight.bold,fontSize: 32),),
          ),
            SizedBox(height: 50,),
            Container(height: 60,width: 355,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 4),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder:InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter Your Password',
                    hintStyle: TextStyle(color: HexColor('#8391A1'))
                ),
              ),
            ),
            ),
                 SizedBox(height: 23,),
            Container(height: 60,width: 355,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 4),
                child: TextField(
                  controller: pass,
                  keyboardType: TextInputType.text,
                  obscureText: !too,
                  obscuringCharacter: '-',
                  decoration: InputDecoration(
                      enabledBorder:InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(color: HexColor('#8391A1')),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        too=!too;
                      });
                    }, icon: Icon(too? Icons.visibility:Icons.visibility_off))
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>forpas()));
              }, child: Text('Forgot Password?',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),)),
            ),SizedBox(height: 40,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
              },
              child: Container(height: 55,width: 350,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),),
                child: Center(child: Text('Login',style: GoogleFonts.urbanist(color: Colors.white),),),
              ),
            ),SizedBox(height: 20),
            Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(color: Colors.white,thickness: 2,indent: 24,)
                  ),

                  Text(" Or Login With "),

                  Expanded(
                      child: Divider(color: Colors.white,thickness: 2,endIndent: 24,)
                  ),
                ]
            ),SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              InkWell(onTap: (){},
              child: Container(
                width: 110,height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2),borderRadius: BorderRadius.all(Radius.circular(8),),

                ),
                child: Image.asset('asetimage/4202107facebookfblogosocialsocialmedia-115710_115591_prev_ui.png',scale: 12,),
              ),
              ),
              InkWell(onTap: (){},
                child: Container(
                  width: 110,height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 2),borderRadius: BorderRadius.all(Radius.circular(8))
                  ),child: Image.asset('asetimage/stock-vector-google-popular-realistic-social-media-logotype-editorial-illustration-eps-2275269793-removebg-preview.png',scale: 11,),
                ),
              ),InkWell(onTap: (){},
                child: Container(
                  width: 110,height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 2),borderRadius: BorderRadius.all(Radius.circular(8))
                  ),child: Image.asset('asetimage/download-removebg-preview.png',scale: 4,),
                ),
              )

            ],),SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Dont have an account?'),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>reg()));
              }, child: Text('Register Now'))
            ],)
        ],),
      ),
      ),
    );
  }
}
