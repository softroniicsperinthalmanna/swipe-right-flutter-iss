import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dthrechargelist51.1dart.dart';
import 'dthrechargeperson52.dart';
class dthrecharge extends StatefulWidget {
  const dthrecharge({super.key});

  @override
  State<dthrecharge> createState() => _dthrechargeState();
}

class _dthrechargeState extends State<dthrecharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(width: double.infinity,height: double.infinity,color: HexColor('#5CA4A3'),
        child: ListView(children: [
          Column(children: [
            SizedBox(height: 15,),
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
                Text("DTH Recharge",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              ],),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 800,
              child: ListView.builder(
                  controller: ScrollController(keepScrollOffset: false),
                  scrollDirection: Axis.vertical,
                  itemCount: dth.length,itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 17,right: 17),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dthpersn(name:dth[index] ['name'])));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Container(width: MediaQuery.of(context).size.width / 1.18, height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: HexColor('#3CBDBC')),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(dth[index]['name'],style: GoogleFonts.poppins(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                                Text( dth[index]['phnumber'],style: GoogleFonts.poppins(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),),
                                Text(dth[index]['sim'],style: GoogleFonts.poppins(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w300),),
                              ],),
                            Spacer(), IconButton(onPressed: () {},
                                icon: Icon(Icons.notifications_outlined, size: 30, color: Colors.black.withOpacity(0.8),))
                          ],),
                      ),
                    ),
                  ),
                );
              }
              ),
            ),
          ],),
        ],
        ),

      ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 735,right: 15),
          child: Column(children: [
            SizedBox(height: 70,width: 70,
              child: FloatingActionButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>rchargadd()));
              },
                backgroundColor: HexColor('#292D32'),
                child: Icon(Icons.add,color: HexColor('#64D1D0'),size: 33,),),
            ),SizedBox(height: 2,),
            Text('Add New',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
          ],),
        ),
    );
  }
}
