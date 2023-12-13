import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/subscriptionpaying43.dart';
class subdisny extends StatefulWidget {
  const subdisny({super.key});

  @override
  State<subdisny> createState() => _subdisnyState();
}

class _subdisnyState extends State<subdisny> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[ Container(width: double.infinity,height: double.infinity,color: HexColor('#64D1D0'),
              child: Column(children: [
                SizedBox(height: 43,),
                Padding(
                  padding: const EdgeInsets.only(right: 320),
                  child: InkWell(onTap: (){
                    Navigator.pop(context);
                  },
                    child: Container(height: 38,width: 38,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                      child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11))
                  ),
                  child:
                  Container(height: 360,width: 355,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(11)),color: HexColor('#3CBDBC')),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Container(height: 54,width: 71,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/Vector (5).png'))),),
                           SizedBox(width: 20,),
                              Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                             Text('Disney +  hotstar',style: GoogleFonts.poppins(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w600),),
                             Text('Mobile Number',style: GoogleFonts.poppins(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),),
                             Text('6576797689',style: GoogleFonts.poppins(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),)
                           ],)
                            ],
                          ),
                          SizedBox(height: 35,),
                          Text('Bill Details',style: GoogleFonts.poppins(fontSize: 19,color: Colors.white,fontWeight: FontWeight.w600),),
                          SizedBox(height: 4,),
                          Row(children: [
                            Text('Plan Name     :',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),SizedBox(width: 13,),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text('Disney+Hotstar Mobile (Ad-\nSupportedplan) (Rs. 499/year)',style: GoogleFonts.play(color: Colors.white,fontSize: 14.5),),
                            )
                          ],),
                          SizedBox(height: 10,),
                          Row(children: [
                            Text('Plan Validity  :',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),SizedBox(width: 12,),
                            Text('1 Year',style: GoogleFonts.play(color: Colors.white,fontSize: 15.5,fontWeight: FontWeight.w600),)
                          ],),
                          SizedBox(height: 12,),
                        ],),
                    ),
                  ),),
              ]
              )
          ),
            Positioned(
                top: 406,left: 71,
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>subpayy()));
                },
                  child: Container(height: 50,width: 250,decoration: BoxDecoration(color: HexColor('#96F4F3'),borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Text('₹',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 23),),SizedBox(width: 4,),
                        Text('499',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 19),),
                      ],
                    ),),
                  ),
                ))
            ,]
      ),
    );
  }
}
