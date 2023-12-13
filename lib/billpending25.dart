import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/billpay26.dart';
class pending extends StatefulWidget {
  const pending({super.key});

  @override
  State<pending> createState() => _pendingState();
}

class _pendingState extends State<pending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ Container(width: double.infinity,height: double.infinity,color: HexColor('#64D1D0'),
        child: Column(children: [
          SizedBox(height: 43,),
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
              Text("Kerala state Electicity Board ltd.",style: GoogleFonts.roboto(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(width: 6,),
            ],),
          ),
          SizedBox(height: 40,),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(11))
            ),
            child:
            Container(height: 310,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(11)),color: HexColor('#3CBDBC')),
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                Text('Pending',style: GoogleFonts.poppins(color: Colors.white),),
                  ListTile(
                    leading: Container(height: 38,width: 38,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(image: AssetImage('asetimage/image 4.png'))),),
                    title: Text('Consumer Number',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                    subtitle: Text('1168157004033',style: GoogleFonts.play(color: Colors.white),),
                  ),
                  SizedBox(height: 15,),
                  Row(children: [
                    Text('Customer name :',style: GoogleFonts.poppins(color: Colors.white),),SizedBox(width: 15,),
                    Text('Mohammed P',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text('Amount :',style: GoogleFonts.poppins(color: Colors.white),),SizedBox(width: 15,),
                    Text('₹ ',style: GoogleFonts.play(color: Colors.white,fontSize: 17.5),),
                    Text('2,455/-',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                  ],),
                  SizedBox(height: 12,),
                  Row(children: [
                    Text('Bill Date :',style: GoogleFonts.poppins(color: Colors.white),),SizedBox(width: 15,),
                    Text( '08/2/2023 ',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                  ],),SizedBox(height: 1,),
                  Row(children: [
                    Text('Due Date :',style: GoogleFonts.poppins(color: Colors.white),),SizedBox(width: 15,),
                    Text(' 20/2/2023',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                  ],),SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 77),
                    child: Column(
                      children: [
                      Text('Click Here To Pay The Bill',style: GoogleFonts.poppins(color: Colors.white,fontSize: 13.2),),
                    ],),
                  ),
              ],),
            ),
            ),),
        ]
        )
        ),
          Positioned(
              top: 415,left: 130,
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>billpay()));
              },
                child: Container(height: 40,width: 120,decoration: BoxDecoration(color: HexColor('#5CA4A3'),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Text('PAY BILL',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600),),),
                ),
              ))
          ,]
      )
    );
  }
}
