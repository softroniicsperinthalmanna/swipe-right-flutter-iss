import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/billksebdata24.dart';
class bilkseb extends StatefulWidget {
  const bilkseb({super.key});

  @override
  State<bilkseb> createState() => _bilksebState();
}

class _bilksebState extends State<bilkseb> {
  var number=TextEditingController();
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
              ),SizedBox(width: 18,),
              Text("Kerala state Electicity Board ltd.",style: GoogleFonts.poppins(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),SizedBox(width: 6,),
            ],),
          ),SizedBox(height: 50,),
          Text("ADD BILL",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 23),),
          SizedBox(height: 20,),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Container(
            width: 330,height: 480,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor('#3CBDBC')),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: TextField(
                        controller: number,
                        keyboardType: TextInputType.number,
                        decoration:   InputDecoration(
                          errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                             
                          hintText: 'Consumer Number',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.only(right: 115,top: 8),
                      child: Text( 'Please Enter Valid Consumer Number',style: TextStyle(color: Colors.white,fontSize: 11),),
                    )
                  ],
                ),SizedBox(height: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: TextField(
                          controller: number,
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
                      padding: const EdgeInsets.only(right: 125.4,top: 8),
                      child: Text( 'Please Enter Valid Consumer Name',style: TextStyle(color: Colors.white,fontSize: 11),),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                      controller: number,
                      keyboardType: TextInputType.number,
                      decoration:   InputDecoration(
                          errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                          hintText: 'Amount',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                      controller: number,
                      keyboardType: TextInputType.number,
                      decoration:   InputDecoration(
                          errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                          hintText: 'Bill Date',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                      controller: number,
                      keyboardType: TextInputType.number,
                      decoration:   InputDecoration(
                          errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4)),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 4,),),
                          hintText: 'Due Date',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                      controller: number,
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
          SizedBox(height: 95,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>kseb()));
          },
          child: Container(height: 50,width: double.infinity,color:HexColor('#127A79'),child:Center(child: Text('CONFIRM',style: GoogleFonts.prompt(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17.5),)) ,),
          )
        ],),
      ),
      ),
    );
  }
}
