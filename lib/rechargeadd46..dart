import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/mblerechrgeoffers47.dart';
class rchargadd extends StatefulWidget {
  const rchargadd({super.key});

  @override
  State<rchargadd> createState() => _rchargaddState();
}

class _rchargaddState extends State<rchargadd> {
  var rechargedate=TextEditingController();
  var rechrgeexpire=TextEditingController();
  var reminder=TextEditingController();
  var name=TextEditingController();
  var moblenum=TextEditingController();
  var select;
  List Items=[
    'Airtel','Vi','BSNL','Jio',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: HexColor('#5CA4A3'),
      child: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 44,),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(children: [
              InkWell(onTap: (){
                Navigator.pop(context);
              },
                child: Container(height: 38,width: 38,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
                ),
              ),
              SizedBox(width: 20,),
              Text("Mobile Recharge",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
          ),SizedBox(height: 25,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Container(
              width: 330,height: 44,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19),),color: HexColor('#3CBDBC')),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                    alignment: AlignmentDirectional.centerEnd,
                    elevation: 25,
                    value: select,
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 80),
                      child: Text('Select Your operator',style: GoogleFonts.poppins(color: Colors.white,fontSize: 15.7,fontWeight: FontWeight.w500),),
                    ),
                    items: Items
                        .map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        select = val;
                      });
                    }),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('Recharged Date',style: GoogleFonts.poppins(color: Colors.white),),
          Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: TextField(
              controller: rechargedate,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
              ),
            ),
          ),) , SizedBox(height: 20,),
              Text('Recharge Expiry Date',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    controller: rechrgeexpire,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                    ),
                  ),
                ),),
              SizedBox(height: 20,),
              Text('Reminder Date',style: GoogleFonts.poppins(color: Colors.white),),
              Container(height: 44,width: 330,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(19)),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    controller: reminder,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
                    ),
                  ),
                ),),
              SizedBox(height: 20,),
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
                    controller: moblenum,
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
              SizedBox(height: 90,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>rechoffrs()));
                },
                  child: Container(width: 300,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20),),color: HexColor("#D9D9D9")),
                    child: Center(child: Text("Confirm",style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.6),),),
                  ),
                ),
              )

          ],)
        ],),
      ),
      ),
    );
  }
}
