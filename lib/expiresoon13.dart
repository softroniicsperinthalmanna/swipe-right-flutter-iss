import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class expire extends StatefulWidget {
  const expire({super.key});

  @override
  State<expire> createState() => _expireState();
}

class _expireState extends State<expire> {
  var selected;
  List list=[
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
            Text("  EXPIRE SOON LIST",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
          ],),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Container(
            width: 260,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19),),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                  alignment: AlignmentDirectional.centerEnd,
                  elevation: 25,
                  value: selected,
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 15,right:110),
                    child: Text('ALL ITEMS',style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.5,fontWeight: FontWeight.w500),),
                  ),
                  items: list
                      .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selected = val;
                    });
                  }),
            ),
          ),
        ),
        SizedBox(height: 35,),

        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Container(height: 65,width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(18),),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                children: [
                  SizedBox(width: 17,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BREAD',style: GoogleFonts.poppins(fontSize: 18.6,fontWeight: FontWeight.w500),),SizedBox(height: 5,),
                      Text('2023/05/22',style: GoogleFonts.roboto(fontSize: 13,fontWeight: FontWeight.w500),),
                    ],),SizedBox(width: 70,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(children: [
                      Text('15',style: GoogleFonts.roboto(color: HexColor('#1D89D8'),fontSize: 24,fontWeight: FontWeight.w500),),SizedBox(height: 5,),
                      Text('Days left',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500),),
                    ],),
                  ),SizedBox(width: 10,),
                  Column(children: [
                    Icon(Icons.notifications_outlined,size: 24,),SizedBox(height: 5,),
                    Container(width: 17,height: 17,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/🦆 icon _close circle_.png'))),)
                  ],)
                ],),
            ),
          ),
        ),
      ],),
      ),
    );
  }
}
