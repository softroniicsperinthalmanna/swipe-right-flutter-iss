import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiperight/subscriptionplan40.dart';
class subscription extends StatefulWidget {
  const subscription({super.key});

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        SizedBox(height: 44,),
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
            Text("Subscription",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          ],),
        ),
        SizedBox(height: 40,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>subplan()));
          },
          child: Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('##D9D9D9'),borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(children: [
              SizedBox(width: 16,),
              Container(height: 31,width: 47,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/Vector (4).png'))),),
                   SizedBox(width: 32,),
              Text('Disney +  hotstar',style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w500),)
            ],),
          ),
        ),SizedBox(height: 25,),
        Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('##D9D9D9'),borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(children: [
            SizedBox(width: 16,),
            Container(height: 50,width: 48,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/pngaaa 1.png'))),),
            SizedBox(width: 88,),
            Text('zee5',style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w500),)
          ],),
        ),
        SizedBox(height: 25,),
        Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('##D9D9D9'),borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(children: [
            SizedBox(width: 16,),
            Container(height: 46,width: 45,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/pngaaa 3.png'))),),
            SizedBox(width: 85,),
            Text('Netflix',style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w500),)
          ],),
        ),
        SizedBox(height: 25,),
        Container(height: 68,width: 350,decoration: BoxDecoration(color: HexColor('##D9D9D9'),borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(children: [
            SizedBox(width: 16,),
            Container(height: 44,width: 40,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/pngaaa 4.png'))),),
            SizedBox(width: 50,),
            Text('Amazon prime',style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w500),)
          ],),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(right: 116),
          child: Text("Expired subscriptions",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        ),SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text('Netflix ',style: GoogleFonts.poppins(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400),),Spacer(),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(HexColor('#D9D9D9'))),
                  child: Text(
                    'renew',
                    style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: () {},
                ),SizedBox(width: 45,),
              ],),
              SizedBox(height: 10,),
              Row(children: [
                Text(' zee5 ',style: GoogleFonts.poppins(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400),),Spacer(),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(HexColor('#D9D9D9'))),
                  child: Text(
                    'renew',
                    style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: () {},
                ),SizedBox(width: 45,),
              ],),
              SizedBox(height: 10,),
              Row(children: [
                Text('item 3 ',style: GoogleFonts.poppins(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400),),Spacer(),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(HexColor('#D9D9D9'))),
                  child: Text(
                    'renew',
                    style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: () {},
                ),SizedBox(width: 45,),
              ],),
              SizedBox(height: 10,),
              Row(children: [
                Text('item 4 ',style: GoogleFonts.poppins(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w400),),Spacer(),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(HexColor('#D9D9D9'))),
                  child: Text(
                    'renew',
                    style: GoogleFonts.poppins(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: () {},
                ),SizedBox(width: 45,),
              ],),


            ],
          ),
        )
      ],),
      ),
    );
  }
}
