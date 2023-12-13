import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
class subplannum extends StatefulWidget {
  const subplannum({super.key});

  @override
  State<subplannum> createState() => _subplannumState();
}

class _subplannumState extends State<subplannum> {
  var iddd=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,right: 310),
          child: InkWell(onTap: (){
            Navigator.pop(context);
          },
            child: Container(height: 38,width: 38,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
              child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
            ),
          ),
        ),
        SizedBox(height: 35,),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
          child: Container(
            height: 116,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(14)),color: HexColor('#3CBDBC')),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: TextField(
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                controller: iddd,
                keyboardType: TextInputType.number,
                decoration:   InputDecoration(
                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1)),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1,),),
                         helperText: 'log in at Disney+Hotstar with this mobile number\nto enjoy the service',
                    helperStyle: GoogleFonts.poppins(fontSize: 12.4,fontWeight: FontWeight.w300,color:HexColor('#FFFFFF')),
                    hintText: 'Mobile Number',hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 18.5,fontWeight: FontWeight.w500)
                ),
              ),
            ),
          ),
        ),
      ],),
      ),
    );
  }
}
