import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class sett extends StatefulWidget {
  const sett({super.key});

  @override
  State<sett> createState() => _settState();
}

class _settState extends State<sett> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: Column(children: [
        SizedBox(height: 44,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            InkWell(onTap: (){
              Navigator.pop(context);
            },
              child: Container(height: 40,width: 40,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black,width: 2)),
                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,weight: 9,),
              ),
            ),SizedBox(width: 20,),
            Text("SETTINGS",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
          ],),
        ),SizedBox(height: 50,),
        Stack(children: [
          Container(height: 63,width: 320,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(13))),
          child: Padding(
            padding: const EdgeInsets.only(right: 115),
            child: Center(child: Text('play Notification sound:',style: GoogleFonts.poppins(),),),
          ),
          ),

          Positioned(
              left: 250,
              child: Container(height: 63,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
              child: Container(height: 35,width: 35,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/tick.png'))),)
              ),),
        ],),
        SizedBox(height: 30,),
        Stack(children: [
          Container(height: 63,width: 320,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(13))),
            child: Padding(
              padding: const EdgeInsets.only(right: 115),
              child: Center(child: Text('Receive Notification at:',style: GoogleFonts.poppins(),),),
            ),
          ),

          Positioned(
            left: 195,
            child: Container(height: 63,width: 125,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                child: Row(
                  children: [
                    SizedBox(width: 13,),
                  Text("${_selectedTime.format(context)}",
                      style: GoogleFonts.poppins(),),SizedBox(width: 3,),
                  IconButton(onPressed: ()
                    => _selectTime(context),
                   icon: Icon(Icons.arrow_drop_down_circle_outlined))
                ],)
            ),),
        ],),
        SizedBox(height: 30,),
        Stack(children: [
          Container(height: 63,width: 320,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(13))),
            child: Padding(
              padding: const EdgeInsets.only(right: 115),
              child: Center(child: Text('play Notification sound:',style: GoogleFonts.poppins(),),),
            ),
          ),

          Positioned(
            left: 250,
            child: InkWell(
              onTap: (){
                showDialog(context: context, builder:(context) {
                  return  AlertDialog(title:Text("Confirm Delete"),actions: [

                    TextButton(onPressed: (){}, child: Text("Cancel")),
                    TextButton(onPressed: (){}, child: Text("Ok")),
                  ],);


                },);
              },
              child: Container(height: 63,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                  child: Padding(
                    padding: const EdgeInsets.all(8.5),
                    child: Container(width: 10,height: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: HexColor('#32D5D8')),child: Container(height: 10,width: 10,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/Shopicons_Light_Trash.png'))),)),
                  )
              ),
            ),),
        ],),
      ],),),
    );
  }
}
