import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/passchang7.dart';
class restpass extends StatefulWidget {
  const restpass({super.key});

  @override
  State<restpass> createState() => _restpassState();
}

class _restpassState extends State<restpass> {
  var newpass=TextEditingController();
  var cnfpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80,right: 280),
          child: Container(width: 50,height: 50,decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(16))),
            child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 5,)),
          ),
        ),SizedBox(height: 34,),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create new password',style: GoogleFonts.urbanist(fontWeight: FontWeight.bold,fontSize: 32),),SizedBox(height: 10,),
              Text("Your new password must be unique from those\n previously used.",style: TextStyle(color: HexColor('#8391A1')),)
            ],),
        ),SizedBox(height: 55,),
        Container(height: 58,width: 347,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 4),
            child: TextField(
              controller: newpass,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  enabledBorder:InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(color: HexColor('#8391A1'))
              ),
            ),
          ),
        ),SizedBox(height: 18,),
        Container(height: 58,width: 347,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 4),
            child: TextField(
              controller: cnfpass,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  enabledBorder:InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(color: HexColor('#8391A1'))
              ),
            ),
          ),
        ),SizedBox(height: 33,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>passchan()));
          },
          child: Container(height: 55,width: 347,
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10)),),
            child: Center(child: Text('Verify',style: GoogleFonts.urbanist(color: Colors.white),),),
          ),
        ),


      ],),
      ),
    );
  }
}
