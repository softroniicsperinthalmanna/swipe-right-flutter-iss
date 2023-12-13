import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class explist extends StatefulWidget {
  const explist({super.key});

  @override
  State<explist> createState() => _explistState();
}

class _explistState extends State<explist> {
  var sele;
  List Item=[
    'Fruits','vegetebles','Meet','Bakery','Groccery','Food'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        SizedBox(height: 44,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
              ),
            ),SizedBox(width: 20,),
            Text("  EXPIRE LIST",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
          ],),
        ),SizedBox(height: 45,),
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Container(
            width: 200,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19),),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                  alignment: AlignmentDirectional.centerEnd,
                  elevation: 25,
                  value: sele,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 50),
                    child: Text('ALL ITEMS',style: GoogleFonts.poppins(color: Colors.black,fontSize: 18.7,fontWeight: FontWeight.w500),),
                  ),
                  items: Item
                      .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      sele = val;
                    });
                  }),
            ),
          ),
        ),SizedBox(height: 35,),

        Container(height: 65,width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(18),),color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              children: [
                SizedBox(width: 17,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('BUN',style: GoogleFonts.poppins(fontSize: 18.6,fontWeight: FontWeight.w500),),SizedBox(height: 5,),
                    Text('2023/04/02',style: GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w500),),
                  ],),SizedBox(width: 25,),
                Text('EXPIRED',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w500,color: HexColor('#FF0000')),),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(children: [
                    Text('-40',style: GoogleFonts.roboto(color:Colors.redAccent,fontSize: 24,fontWeight: FontWeight.w500),),SizedBox(height: 5,),
                    Text('Days',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500),),
                  ],),
                ),SizedBox(width: 10,),
                Column(children: [
                  Icon(Icons.notifications_outlined,size: 24,),SizedBox(height: 5,),
                  Container(width: 17,height: 17,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/🦆 icon _close circle_.png'))),)
                ],)
              ],),
          ),
        )
      ],),
      ),
    );
  }
}
