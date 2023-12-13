import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/rechargepaygp49.dart';
import 'package:swiperight/rechrgplanslist48.1.dart';
class rechargolan extends StatefulWidget {
  const rechargolan({super.key});

  @override
  State<rechargolan> createState() => _rechargolanState();
}

class _rechargolanState extends State<rechargolan> {
  @override
  Widget build(BuildContext context) {
    var nmephnn=TextEditingController();
    return Scaffold(
      body: Container(
        width: double.infinity,height: double.infinity,color: HexColor('#5CA4A3'),
        child: ListView(children: [
          Column(children: [
            SizedBox(height: 15,),
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
            ),SizedBox(height: 28,),
            Container(height: 60,width: 335,decoration: BoxDecoration(color: HexColor("#D9D9D9"),borderRadius: BorderRadius.all(Radius.circular(17))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 3,top: 3),
                  child: TextField(
                    controller: nmephnn,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 2,),
                          child: Icon(Icons.search,size: 30,color: Colors.black,),
                        ),
                        suffixIcon: Icon(Icons.call_outlined,size: 30,color: Colors.black,),
                        hintText: 'Enter Name or Mobile Number ',hintStyle: GoogleFonts.poppins(fontSize: 14.6)
                    ),
                  ),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: double.infinity,height: 21,decoration: BoxDecoration(color: HexColor("#D9D9D9")),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text("Data",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 11.8),),
              Text("Unlimited",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 11.8),),
              Text("Talktime",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 11.8),),
              Text("Entertainment",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 11.8),),
              Text("Other packs",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 11.8),)
            ],),
            ),
            SizedBox(height: 20,),
            SizedBox(height: 900,
              child: ListView.builder(
                itemCount: rechrplan.length,itemBuilder: (context,index){
                  return
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>rechrgpayy()));
                 },
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 15,left: 23,right: 23),
                   child: Container(height: 60,width: 320,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: HexColor("#D9D9D9")),
                    child: Row(children: [
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: HexColor("#64D1D0"),child: Text(rechrplan[index]['number']),
                      ),SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(rechrplan[index]['name']),
                        Text(rechrplan[index]['validity']),
                      ],),SizedBox(width: 50,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(rechrplan[index]['data']),
                          Text(rechrplan[index]['pack']),
                        ],),Spacer(),
                      Container(height: 24,width: 66,decoration: BoxDecoration(color: HexColor("#64D1D0"),borderRadius: BorderRadius.all(Radius.circular(16))),
                        child: Center(child: Text("recharge",style: GoogleFonts.poppins(color: Colors.white,fontSize: 12),),),
                      ),SizedBox(width: 10,)
                    ],),
                    ),
                 ),
               );
                }
              ),
            )
          ],)
        ],),
      ),
    );
  }
}
