import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'food10.dart';
import 'homelist8.1.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child:ListView(
        children: [
          Column(children: [
            SizedBox(height: 14,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(height: 50,width: 50,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/Avatar.png'))),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,size: 40,)),
              )
            ],),SizedBox(height: 40,),
           Container(width: 340,height: 155,decoration: BoxDecoration(color: HexColor('#6306B2'),borderRadius: BorderRadius.all(Radius.circular(22)),),
           child: Column(children: [
             SizedBox(height: 12,),
             Image.asset('asetimage/Vector 3 (1).png',scale: 1.5,),
             Text('SWIPERIGHT',style: GoogleFonts.poppins(color: Colors.black,fontSize: 28.5,fontWeight: FontWeight.bold),)
           ],),
           ),SizedBox(height: 42,),
            SizedBox(height: 800,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: GridView.builder(
                    controller: ScrollController(keepScrollOffset: false),
                    itemCount: homee.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.66,crossAxisSpacing: 0.3,mainAxisSpacing: 5), itemBuilder: (context,index){
                  return Column(
                    children: [
                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>homee[index]['nav']));},
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(14))
                            ),
                          child:
                          Container(width: 155,height: 68,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12.4)),color: homee[index]['clr'],image: DecorationImage(image: homee[index]['img'])),),
                        ),
                      ),SizedBox(height: 4,),
                      homee[index]['text']
                    ],
                  );
                }),
              ),
            )
          ],),
        ],
      ),
      ),
    );
  }
}
