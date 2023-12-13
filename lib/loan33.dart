import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/loanbajajfin34.dart';
class loan extends StatefulWidget {
  const loan({super.key});

  @override
  State<loan> createState() => _loanState();
}

class _loanState extends State<loan> {
  var search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36,left: 10),
              child: Row(children: [
                InkWell(onTap: (){
                  Navigator.pop(context);
                },
                  child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                    child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
                  ),
                ),SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("PAY LOANL",style: GoogleFonts.poppins(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w600),),
                ),SizedBox(width: 8,),
                Container(width: 40,height: 40,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asetimage/compensation_8386485 1.png"))),)
              ],),
            ),SizedBox(height: 26,),
            Container(
              width: 320,
              height: 35,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(19)),
              child: TextField(
                textAlign: TextAlign.start,
                controller: search,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder:  InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: InkWell(
                        onTap: (){},
                        child: Icon(Icons.search,size: 24,)),
                    hintText: "Search here",
                    labelStyle: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.4)),
                    contentPadding: EdgeInsets.only(top: 2)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child:
              Container(height: 500,width: 339,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12),),color: HexColor('#3CBDBC')),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top:5 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23,),
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>loanbjj()));
                      },
                        child: Row(children: [
                          Container(height: 39,width: 39,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download 3.png'))),),
                          SizedBox(width: 15,),
                          Text('Bajaj Finance LTD',style: GoogleFonts.inter(color: Colors.white,fontSize: 18,),)
                        ],),
                      ),
                      SizedBox(height: 23,),
                      InkWell(onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>bilkseb()));
                      },
                        child: Row(children: [
                          Container(height: 39,width: 39,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/7c3ed188-5cbe-47ce-82ed-54a89f6f7f94 1.png'))),),
                          SizedBox(width: 15,),
                          Text('HDB Financial Services Limited',style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
                        ],),
                      ),
                      SizedBox(height: 23,),
                      Row(children: [
                        Container(height: 39,width: 39,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download 4.png'))),),
                        SizedBox(width: 15,),
                        Text('Home Credit',style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
                      ],),
                      SizedBox(height: 23,),
                      Row(children: [
                        Container(height: 39,width: 39,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download 2.png'))),),
                        SizedBox(width: 15,),
                        Text('Ring',style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
                      ],),
                      SizedBox(height: 23,),
                      Row(children: [
                        Container(height: 39,width: 39,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/Untitled 1.png'))),),
                        SizedBox(width: 15,),
                        Text('IIFL Finance',style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
                      ],),
                      SizedBox(height: 23,),
                      Row(children: [
                        Container(height: 39,width: 39,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/muthoot-finance-logo 1.png'))),),
                        SizedBox(width: 15,),
                        Text('Muthoot Finance',style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
                      ],),
                      SizedBox(height: 23,),
                      Row(children: [
                        Container(height: 39,width: 39,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/download 5.png'))),),
                        SizedBox(width: 15,),
                        Text('Axis Bank Finance',style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
                      ],),
                    ],),
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
