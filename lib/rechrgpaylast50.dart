import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
class rechrgpayyyy extends StatefulWidget {
  const rechrgpayyyy({super.key});

  @override
  State<rechrgpayyyy> createState() => _rechrgpayyyyState();
}

class _rechrgpayyyyState extends State<rechrgpayyyy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: HexColor('#5CA4A3'),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 10),
              child: InkWell(onTap: (){
                Navigator.pop(context);
              },
                child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
                ),
              ),
            ),
            Positioned(
                top: 270,left: 105,
                child: Container(height: 200,width: 200,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/image-removebg-preview (1) 1.png'))),)),
            Positioned(
              top: 545,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(17))
                ),
                child: Container(width: 387.7,height: 300,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(17)),color: HexColor('#64D1D0'),),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right: 206,left: 13),
                          child: Text('₹ 3846/-',style: GoogleFonts.play(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21  ),),
                        ),
                        SizedBox(width: 0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: Container(width: 70,height: 70,decoration: BoxDecoration(shape: BoxShape.circle,color: HexColor('#00FFFD')),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/Vector 3 (1).png'))),),
                                Text('SWIPERIGHT',style: GoogleFonts.poppins(fontSize: 9,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35,),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Container(width: 58,height: 38,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/image 8.png'))),),
                      ),
                      SizedBox(width: 15,),
                      Text('South Indian Bank ****452',style: GoogleFonts.inter(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 22),)
                    ],),SizedBox(height: 45,),
                    InkWell(onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>billing()));
                    },
                      child: Container(height: 65,width: 500,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(14)),color: HexColor('#127A79')),
                        child: Center(child: Text('Proceed to pay',style: GoogleFonts.play(color: Colors.white,fontSize: 22),),),
                      ),
                    )
                  ],),
                ),)
              ,),
          ],
        ),

      ),
    );
  }
}
