import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class additm extends StatefulWidget {
  const additm({super.key});

  @override
  State<additm> createState() => _additmState();
}

class _additmState extends State<additm> {
  DateTime _selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) { // Check for null before assignment
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  var sel;
  List listt=[
    'Fruits','vegetebles','Meet','Bakery','Groccery','Food'
  ];
  var name=TextEditingController();
  var naame=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,width: double.infinity,color: HexColor('#64D1D0'),
      child: SingleChildScrollView(
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
              Text(" ADD NEW ITEMS",style: GoogleFonts.roboto(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
            ],),
          ),SizedBox(height: 35,),
          Container(height: 100,width: 100,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/Vector 3 (1).png'))),),SizedBox(height: 10,),
          Text('SWIPERIGHT',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 22),),
          SizedBox(height: 30,),
          Stack(children: [
            Container(height: 63,width: 320,decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: const EdgeInsets.only(right: 208),
                child: Center(child: Text('Enter  Name:',style: GoogleFonts.poppins(),),),
              ),
            ),

            Positioned(
              left: 105,
              child: Container(height: 63,width: 215,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,top: 7),
                    child: TextField(
                      controller: name,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Enter here'
                      ),
                    ),
                  )
              ),),
          ],),
          SizedBox(height: 30,),
          Stack(children: [
            Container(height: 63,width: 320,decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: const EdgeInsets.only(right: 215),
                child: Center(child: Text('Expiry Date:',style: GoogleFonts.poppins(),),),
              ),
            ),

            Positioned(
              left: 105,
              child: Container(height: 63,width: 215,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Text("${_selectedDate.toLocal()}".split(' ')[0]),SizedBox(width: 64,),
                      InkWell(
                        onTap: () => _selectDate(context),
                          child: Container(height: 35,width: 35,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asetimage/date.png'))),)),
                    ],
                  )
              ),),
          ],),
          SizedBox(height: 30,),
          Stack(children: [
            Container(height: 63,width: 320,decoration: BoxDecoration(color:  Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: const EdgeInsets.only(right: 215),
                child: Center(child: Text('Reminder:',style: GoogleFonts.poppins(),),),
              ),
            ),

            Positioned(
              left: 105,
              child: Container(height: 63,width: 215,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('Same Day'),SizedBox(width: 80,),
                     Icon(Icons.arrow_drop_down_circle_outlined)
                    ],
                  )
              ),),
          ],),SizedBox(height: 30,),
          Stack(children: [
            Container(height: 63,width: 320,decoration: BoxDecoration(color:  Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: const EdgeInsets.only(right: 215),
                child: Center(child: Text('Select Group:',style: GoogleFonts.poppins(),),),
              ),
            ),

            Positioned(
              left: 105,
              child: Container(height: 63,width: 215,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton(
                            alignment: AlignmentDirectional.centerEnd,
                            elevation: 25,
                            value: sel,
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 0,right:70),
                              child: Text('Fruits',style: GoogleFonts.poppins(color:  Colors.black,fontSize: 12.5,fontWeight: FontWeight.w500),),
                            ),
                            items: listt
                                .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                sel = val;
                              });
                            }),
                      ),SizedBox(width: 20,),
                      Icon(Icons.add),

                    ],
                  )
              ),),
          ],),SizedBox(height: 30,),
          Stack(children: [
            Container(height: 63,width: 320,decoration: BoxDecoration(color:  Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Padding(
                padding: const EdgeInsets.only(right: 208),
                child: Center(child: Text('Note:',style: GoogleFonts.poppins(),),),
              ),
            ),

            Positioned(
              left: 105,
              child: Container(height: 63,width: 215,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)),color: HexColor('#CACACA')),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,top: 7),
                    child: TextField(
                      controller: naame,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Enter here:  '
                      ),
                    ),
                  )
              ),),
          ],),SizedBox(height: 30,),
          InkWell(onTap: (){},
            child: Container(width: 70,height: 30,decoration: BoxDecoration(color:  Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(7))),
            child: Row(children: [
              Icon(Icons.save),
              Text('Save',style: TextStyle(color: Colors.black),)
            ],),
            ),
          ),
        ],),
      ),
      ),
    );
  }
}
