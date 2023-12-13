import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/wtrbilldetail30.dart';
class wtrbil extends StatefulWidget {
  const wtrbil({super.key});

  @override
  State<wtrbil> createState() => _wtrbilState();
}

class _wtrbilState extends State<wtrbil> {
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
                  Text("Kerala Water Authority",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),SizedBox(width: 6,),
                ],),
              ),SizedBox(height: 50,),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>wtrbilll()));
              },
                child: Container(height: 84,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: HexColor('#3CBDBC')),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: ListTile(
                      leading: Container(height: 45,width: 45,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(image: AssetImage('asetimage/electricity.png'))),),
                      title: Text('Connection ID',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text('0135415145',style: GoogleFonts.play(color: Colors.white),),
                      trailing: Text('Pending',style: GoogleFonts.poppins(color: Colors.white),),
                    ),
                  ),
                ),
              ),SizedBox(height: 40,),
              InkWell(onTap: (){},
                child: Container(height: 84,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: HexColor('#3CBDBC')),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: ListTile(
                      leading: Container(height: 45,width: 45,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(image: AssetImage('asetimage/electricity.png'))),),
                      title: Text('Connection ID',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text('0135415145',style: GoogleFonts.play(color: Colors.white),),
                      trailing: Text('Pending',style: GoogleFonts.poppins(color: Colors.white),),
                    ),
                  ),
                ),
              ),SizedBox(height: 40,),
              InkWell(onTap: (){},
                child: Container(height: 84,width: 340,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: HexColor('#3CBDBC')),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: ListTile(
                      leading: Container(height: 45,width: 45,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)),image: DecorationImage(image: AssetImage('asetimage/electricity.png'))),),
                      title: Text('Connection ID',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                      subtitle: Text('0135415145',style: GoogleFonts.play(color: Colors.white),),
                      trailing: Text('Pending',style: GoogleFonts.poppins(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],),]
        ),
      ),
    );
  }
}
