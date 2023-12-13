import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/otp5.dart';
class forpas extends StatefulWidget {
  const forpas({super.key});

  @override
  State<forpas> createState() => _forpasState();
}

class _forpasState extends State<forpas> {
  var emaile=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80,right: 280),
            child: Container(width: 50,height: 50,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
              child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 5,)),
            ),
          ),SizedBox(height: 34,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Forgot Password?',style: GoogleFonts.urbanist(fontWeight: FontWeight.bold,fontSize: 32),),SizedBox(height: 10,),
              Text("Don't worry! It occurs. Please enter the email/n address linked with your account.",style: TextStyle(color: HexColor('#8391A1')),)
            ],),
          ),SizedBox(height: 56,),
          Container(height: 60,width: 350,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 4),
              child: TextField(
                controller: emaile,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder:InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(color: HexColor('#8391A1'))
                ),
              ),
            ),
          ),SizedBox(height: 28,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
            },
            child: Container(height: 55,width: 350,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),),
              child: Center(child: Text('Send Code',style: GoogleFonts.urbanist(color: Colors.white),),),
            ),
          ),SizedBox(height: 340,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Remember Password?'),
              TextButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>reg()));
              }, child: Text('Login'))
            ],)
        ],),
      ),
      ),
    );
  }
}
