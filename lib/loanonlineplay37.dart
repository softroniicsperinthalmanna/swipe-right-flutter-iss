import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/loanpaybank38.dart';
import 'package:swiperight/wtrbilloptns31.dart';
class loangp extends StatefulWidget {
  const loangp({super.key});

  @override
  State<loangp> createState() => _loangpState();
}

class _loangpState extends State<loangp> {
  var paying;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 46,right: 320),
            child: InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Container(height: 38,width: 38,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 22),
            child: Text('Choose Payment Option',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
          ),SizedBox(height: 40,),
          Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('#3CBDBC'),borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 8,),
              Container(height: 40,width: 253,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/Google-Pay-logo-768x432 1.png'))),),

              Spacer(), Radio(
                activeColor: Colors.white,
                hoverColor: Colors.white,
                focusColor: Colors.white,
                value: 'pi', groupValue: paying, onChanged: (value) {
                setState(() {
                  paying=value;
                });
              },),
            ],),
          ),
          SizedBox(height: 40,),
          Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('#3CBDBC'),borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 8,),
              Container(height: 53,width: 53,decoration: BoxDecoration(shape: BoxShape.circle,color: HexColor('#5F259F')),child: Container(height: 20,width: 20,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/path36.png'))),)),

              Padding(
                padding: const EdgeInsets.only(right: 20,top: 6),
                child: Container(height: 35,width: 158,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/path32.png'))),),
              ),
              // SizedBox(width: 6,),
              Spacer(
              ),
              Radio(
                activeColor: Colors.white,
                hoverColor: Colors.white,
                value: 'gp', groupValue: paying, onChanged: (value) {
                setState(() {
                  paying=value;
                });
              },),
            ],),
          ),SizedBox(height: 40,),
          Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('#3CBDBC'),borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 8,),
              Container(height: 130,width: 183,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download__1_-removebg-preview.png'))),),

              Spacer(), Radio(
                activeColor: Colors.white,
                hoverColor: Colors.white,
                focusColor: Colors.white,
                value: 'vk', groupValue: paying, onChanged: (value) {
                setState(() {
                  paying=value;
                });
              },),
            ],),
          ),
          SizedBox(height: 40,),
          Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('#3CBDBC'),borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 8,),
              Container(height: 55,width: 220,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/bhim-logo-brandlogos.net_-512x512-removebg-preview.png'),),)),
              Spacer(), Radio(
                activeColor: Colors.white,
                hoverColor: Colors.white,
                focusColor: Colors.white,
                value: 'dd', groupValue: paying, onChanged: (value) {
                setState(() {
                  paying=value;
                });
              },),
            ],),
          ),
          SizedBox(height: 130,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>loanbank()));
          },
            child: Container(height: 70,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(24)),color: HexColor('#127A79')),
              child: Center(child: Text('Proceed to pay',style: GoogleFonts.play(color: Colors.white,fontSize: 22),),),
            ),
          )
        ],),
      ),
    );
  }
}
