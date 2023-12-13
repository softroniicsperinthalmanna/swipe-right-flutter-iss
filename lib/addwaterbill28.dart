import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/watrbillpending29.dart';
class watr extends StatefulWidget {
  const watr({super.key});

  @override
  State<watr> createState() => _watrState();
}

class _watrState extends State<watr> {
  var id=TextEditingController();
  var name=TextEditingController();
  var amount=TextEditingController();
  var billdate=TextEditingController();
  var duedate=TextEditingController();
  var remindedate=TextEditingController();

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
                Text("Kerala Water Authority",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(width: 6,),
              ],),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Row(children: [
                Container(height: 22,width: 17,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/locationn.png'))),),SizedBox(width: 6,),
                Text('KERALA',style: GoogleFonts.roboto(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),)
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
                        padding: const EdgeInsets.only(right: 236,top: 26,bottom: 10),
                        child: Container(height: 60,width: 60,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/electricity.png'))),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                          controller: id,
                          keyboardType: TextInputType.number,
                          decoration:   InputDecoration(
                              errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                              focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),

                              hintText: 'Connection ID',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(right: 135,top: 8),
                        child: Text( 'Please Enter Valid  Connection ID',style: TextStyle(color: Colors.white,fontSize: 11),),
                      )
                    ],
                  ),SizedBox(height: 15,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                            controller: name,
                            keyboardType: TextInputType.text,
                            decoration:   InputDecoration(
                                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                                hintText: 'Customer Name',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 127,top: 8),
                        child: Text( 'Please Enter Valid Customer Name',style: TextStyle(color: Colors.white,fontSize: 11),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                        controller: amount,
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
                        controller: duedate,
                        keyboardType: TextInputType.number,
                        decoration:   InputDecoration(
                            errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                            hintText: 'Bill Date',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                        controller: billdate,
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
                        controller: remindedate,
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
            SizedBox(height: 29,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>wtrbil()));
            },
              child: Container(height: 45,width: 270,decoration: BoxDecoration(color:HexColor('#127A79'),borderRadius: BorderRadius.all(Radius.circular(25))),child:Center(child: Text('LInk Account',style: GoogleFonts.urbanist(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17.5),)) ,),
            )
          ],),
        ),
      ),
    );
  }
}
