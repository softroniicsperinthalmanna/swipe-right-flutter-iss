import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/loanaccounter36.dart';
class loanpayer extends StatefulWidget {
  const loanpayer({super.key});

  @override
  State<loanpayer> createState() => _loanpayerState();
}

class _loanpayerState extends State<loanpayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
        child: ListView(
            children:[ Column(children: [
              SizedBox(height: 23,),
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
                  Text("MUHAMMED YASIR",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),SizedBox(width: 6,),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 56),
                child: Text('asd***********5656',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: HexColor('#444343')),),
              ),
              SizedBox(height: 60,),
              InkWell(onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>wtrbilll()));
              },
                child: Container(height: 84,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: HexColor('#3CBDBC')),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: ListTile(
                      leading: Container(height: 45,width: 45,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download 3.png'))),),
                      title: Text('BAJAJ FINANCE LTD',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text('asd***********5656',style: GoogleFonts.play(color: Colors.white),),

                    ),
                  ),
                ),
              ),SizedBox(height: 430,),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loann()));
              },
                child: Container(height: 45,width: 270,decoration: BoxDecoration(color:HexColor('#96F4F3'),borderRadius: BorderRadius.all(Radius.circular(13))),child:Center(child: Text('ADD BILL',style: GoogleFonts.urbanist(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17.5),)) ,),
              )
            ],),]
        ),
      ),
    );
  }
}
