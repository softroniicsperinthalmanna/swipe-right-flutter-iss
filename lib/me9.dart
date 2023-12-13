import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/homelist8.1.dart';
class me extends StatefulWidget {
  const me({super.key});

  @override
  State<me> createState() => _meState();
}

class _meState extends State<me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        SizedBox(height: 50,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(height: 50,width: 50,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asetimage/Avatar.png'))),),
            ),SizedBox(width: 15,),
            Text("Dean Onyemauche",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: 20,color: HexColor('#202046')),)
          ],),SizedBox(height: 25,),
           Expanded(
             child: ListView.builder(itemCount: melist.length,itemBuilder: (context,index){
               return Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(bottom: 26),
                     child: Container(height: 58,width: 333,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)),color: HexColor('#9068B2')),
                       child: ListTile(
                             leading:Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image:  melist[index]['img'],)),),
                         title: melist[index]['text'],
                         trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined)),
                       ),
                     ),
                   ),
                 ],
               );
             }),
           )
      ],),
      ),
    );
  }
}
