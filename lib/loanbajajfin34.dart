import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/loanbaj35.dart';
class loanbjj extends StatefulWidget {
  const loanbjj({super.key});

  @override
  State<loanbjj> createState() => _loanbjjState();
}

class _loanbjjState extends State<loanbjj> {
  var idd=TextEditingController();
  var namee=TextEditingController();
  var amountt=TextEditingController();
  var billdatee=TextEditingController();
  var duedatee=TextEditingController();
  var remindedatee=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
        child: SingleChildScrollView(
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
                ),SizedBox(width: 20,),
                Text("Bajaj Finance LTD",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ],),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Container(
              width: 330,height: 570,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor('#3CBDBC')),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                          controller: idd,
                          keyboardType: TextInputType.number,
                          decoration:   InputDecoration(
                              errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),

                              hintText: 'Loan Account Number',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(right: 95,top: 8),
                        child: Text( 'Please Enter Valid  Loan Account Number',style: TextStyle(color: Colors.white,fontSize: 11),),
                      )
                    ],
                  ),SizedBox(height: 15,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                            controller: namee,
                            keyboardType: TextInputType.text,
                            decoration:   InputDecoration(
                                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                                hintText: 'Consumer Name',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 127,top: 8),
                        child: Text( 'Please Enter Valid Consumer Name',style: TextStyle(color: Colors.white,fontSize: 11),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                            controller: amountt,
                            keyboardType: TextInputType.number,
                            decoration:   InputDecoration(
                                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                                hintText: 'Mobile Number',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 127,top: 8),
                        child: Text( 'Please Enter Valid Mobile Numbere',style: TextStyle(color: Colors.white,fontSize: 11),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                        controller: duedatee,
                        keyboardType: TextInputType.number,
                        decoration:   InputDecoration(
                            errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                            hintText: 'Amount',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                        controller: billdatee,
                        keyboardType: TextInputType.number,
                        decoration:   InputDecoration(
                            errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                            hintText: 'Due Date',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                        controller: remindedatee,
                        keyboardType: TextInputType.number,
                        decoration:   InputDecoration(
                            errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                            hintText: 'Reminding Date',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                        )
                    ),
                  ),
                ],
              ),
            ),),
            SizedBox(height: 46,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>loanpayer()));
            },
              child: Container(height: 45,width: 270,decoration: BoxDecoration(color:HexColor('#127A79'),borderRadius: BorderRadius.all(Radius.circular(25))),child:Center(child: Text('Proceed',style: GoogleFonts.urbanist(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17.5),)) ,),
            )
          ],),
        ),
      ),
    );
  }
}
