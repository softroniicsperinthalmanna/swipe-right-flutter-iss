import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'insuranceperson58.dart';
class insurance extends StatefulWidget {
  const insurance({super.key});

  @override
  State<insurance> createState() => _insuranceState();
}

class _insuranceState extends State<insurance> {
  var name=TextEditingController();
  var remnddate=TextEditingController();
  var expdate=TextEditingController();
  var date=TextEditingController();
  var type=TextEditingController();
  var mbnum=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#5CA4A3'),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 42,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  InkWell(onTap: () {Navigator.pop(context);},
                  child: Container(height: 38, width: 38, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2)),
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.black, weight: 9,),
                    ),),SizedBox(width: 10,),
                    Text('Insurance',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                ],
              ),
            ),
              SizedBox(height: 44,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
              child:
              Container(height: 70,width: 70,decoration: BoxDecoration(color: HexColor("#D9D9D9"),borderRadius: BorderRadius.all(Radius.circular(14))),
              child: Column(children: [
                SizedBox(height: 16,),
                SizedBox(height: 27,width: 50,child: Image(image: AssetImage("asetimage/Group.png"),fit: BoxFit.cover,),),SizedBox(height: 1,),
                Text("Bike",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15.4),)
                ],),
                ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
              child:
              Container(height: 70,width: 70,decoration: BoxDecoration(color: HexColor("#D9D9D9"),borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Column(children: [
                  SizedBox(height: 10,),
                  SizedBox(height: 35,width: 40,child: Image(image: AssetImage("asetimage/Group (1).png"),fit: BoxFit.cover,),),SizedBox(height: 0,),
                  Text("Car",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15.4),)
                ],),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
              child:
              Container(height: 70,width: 70,decoration: BoxDecoration(color: HexColor("#D9D9D9"),borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Column(children: [
                  SizedBox(height: 9.3,),
                  SizedBox(height: 35,width: 37,child: Image(image: AssetImage("asetimage/love_2689084 1.png"),fit: BoxFit.cover,),),SizedBox(height: 1,),
                  Text("Health",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15.4),)
                ],),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
              child:
              Container(height: 70,width: 70,decoration: BoxDecoration(color: HexColor("#D9D9D9"),borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Column(children: [
                  SizedBox(height: 8,),
                  SizedBox(height: 37,width: 35,child: Image(image: AssetImage("asetimage/Group (2).png"),fit: BoxFit.cover,),),SizedBox(height: 1,),
                  Text("Shop",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15.4),)
                ],),
              ),
              )

          ],),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Insurance Type',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    controller: type,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                    ),
                  ),
                ),) , SizedBox(height: 10,),
              Text('Insurance Date',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    controller: date,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              Text('Insurance Expiry Date',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    controller: expdate,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              Text('Customer Details',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    controller:remnddate ,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                    ),
                  ),
                ),),
              SizedBox(height: 10,),
              Text('Reminder Date',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 190,width: 330,decoration: BoxDecoration(color: HexColor('#3CBDBC'),borderRadius: BorderRadius.all(Radius.circular(17)),),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(children: [
                    TextField(
                      controller: name,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefix: Text('Name :',style: GoogleFonts.poppins(color: Colors.white),),
                          enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                      ),
                    ),
                    TextField(
                      controller: mbnum,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          prefix: Text('Mobile Number :',style: GoogleFonts.poppins(color: Colors.white),),
                          prefixStyle: GoogleFonts.poppins(color: Colors.white),

                          enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                      ),
                    ),
                  ],),
                ),
              ),
              SizedBox(height: 45,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>insrncpersn()));
                },
                  child: Container(width: 300,height: 43,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),),color: HexColor("#D9D9D9")),
                    child: Center(child: Text("Confirm",style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.6),),),
                  ),
                ),
              )

            ],)
            ]),
      )
        )
      );
  }
}
