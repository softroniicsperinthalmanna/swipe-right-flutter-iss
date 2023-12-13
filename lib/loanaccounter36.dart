import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/loanonlineplay37.dart';
class loann extends StatefulWidget {
  const loann({super.key});

  @override
  State<loann> createState() => _loannState();
}

class _loannState extends State<loann> {
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
                    Text("MUHAMMED YASIR",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),SizedBox(width: 6,),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 56),
                  child: Text('asd***********5656',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: HexColor('#444343')),),
                ),
                SizedBox(height: 40,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11))
                  ),
                  child:
                  Container(height: 510,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(11)),color: HexColor('#3CBDBC')),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          ListTile(
                            leading: Container(height: 42,width: 42,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download 3.png'))),),
                            title: Text('LOAN ACCOUNT NUMBER',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                            subtitle: Text('asd***********5656',style: GoogleFonts.play(color: Colors.white),),
                          ),
                          SizedBox(height: 35,),
                          Row(children: [
                            Text('Consumer name  :',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),SizedBox(width: 13,),
                            Text('Muhammed Yasir',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                          ],),
                          SizedBox(height: 10,),
                          Row(children: [
                            Text('Amount   :',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),SizedBox(width: 12,),
                            Text('₹ ',style: GoogleFonts.play(color: Colors.white,fontSize: 17.5,fontWeight: FontWeight.w600),),
                            Text('3846',style: GoogleFonts.play(color: Colors.white,fontSize: 15.5,fontWeight: FontWeight.w600),)
                          ],),
                          SizedBox(height: 12,),
                          Row(children: [
                            Text('Loan Account Numbe    :',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),SizedBox(width: 13,),
                            Text( 'asd45235455215656 ',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                          ],),SizedBox(height: 1,),
                          Row(children: [
                            Text('Mobile Number  :',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),SizedBox(width: 12,),
                            Text('984657452',style: GoogleFonts.play(color: Colors.white,fontSize: 13.5),)
                          ],),SizedBox(height: 30,),

                        ],),
                    ),
                  ),),
              ]
              )
          ),
            Positioned(
                top: 585,left: 85,
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>loangp()));
                },
                  child: Container(height: 40,width: 220,decoration: BoxDecoration(color: HexColor('#96F4F3'),borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(child: Text('PAY LOAN',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600),),),
                  ),
                ))
            ,]
      ),
    );
  }
}
