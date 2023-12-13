import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dthrechargelist51.1dart.dart';
import 'dthrechrgsubscriber54.dart';
class dthchannels extends StatefulWidget {
  const dthchannels({super.key});

  @override
  State<dthchannels> createState() => _dthchannelsState();
}

class _dthchannelsState extends State<dthchannels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
          child: Column(children: [
            SizedBox(height: 44,),
            Padding(
              padding: const EdgeInsets.only(left: 20), child: Row(children: [
              InkWell(onTap: () {Navigator.pop(context);},
                child: Container(height: 38, width: 38, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2)),
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black, weight: 9,),
                ),
              ),
              SizedBox(width: 20,),
              Text("DTH Recharge", style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            ],),
            ),
            SizedBox(height: 50),
            Container(width: 340,height: 670,decoration: BoxDecoration(color: HexColor("#3CBDBC"),borderRadius: BorderRadius.all(Radius.circular(15),),),
              child: SizedBox(height: 700,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,),
                  child: ListView.builder(
                    itemCount: dthchannell.length,itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 22),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                        child: Column(children: [
                          Container(height: 52,width: 350,decoration: BoxDecoration(color: HexColor("#96F4F3"),borderRadius: BorderRadius.all(Radius.circular(18))),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,image: DecorationImage(fit: BoxFit.fitWidth,image: dthchannell[index]['imag'],)),),
                            ),
                            title: Text(dthchannell[index]['chanel']),
                          ),
                          ),
                          
                        ],),


                    ),
                      );}
                  ),
                ),
              ),)

          ],),
          ),
          Positioned(
              top: 720,left: 50,
              child:  Padding(
            padding: const EdgeInsets.only(right: 0,left: 20),
             child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>dthsubscriber()));
            },
              child: Container(width: 255, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16),), color: HexColor("#96F4F3")),
                child: Center(child: Text("Recharge now", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 17.6),),),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
