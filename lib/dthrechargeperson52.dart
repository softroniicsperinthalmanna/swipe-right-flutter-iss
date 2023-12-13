import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dthchannels53.dart';
class dthpersn extends StatefulWidget {
   dthpersn({super.key,required this.name});
   var name;

  @override
  State<dthpersn> createState() => _dthpersnState();
}

class _dthpersnState extends State<dthpersn> {
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
    }}
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(height: double.infinity, width: double.infinity, color: HexColor('#5CA4A3'),
            child: Column(children: [
              SizedBox(height: 44,),
              Padding(
                padding: const EdgeInsets.only(left: 20), child: Row(children: [
                  InkWell(onTap: () {Navigator.pop(context);},
                    child: Container(height: 38, width: 38, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2)),
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.black, weight: 9,),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("DTH Recharge", style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                ],),
              ),
              SizedBox(height: 70,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                child: Container(height: 580, width: 320,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(17)), color: HexColor('#3CBDBC')),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, top: 95),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Consumer name:", style: GoogleFonts.poppins(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20), child: Text(widget.name, style: GoogleFonts.poppins(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600),),
                            ),
                          ],
                        ),
                        SizedBox(height: 22,),
                        Row(
                          children: [
                            Text("Amount :", style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("₹ 118/-", style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Text("Bill Date :", style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("04/10/2023",
                                style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text("Pay Date :", style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("30/10/2023",
                                style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),),
                            ),
                          ],
                        ),
                        SizedBox(height: 70,),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Stack(children: [
                            Container(height: 50,
                              width: 250,
                              decoration: BoxDecoration(color: HexColor("#96F4F3"), borderRadius: BorderRadius.all(Radius.circular(15))),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 131),
                                  child: Text("${_selectedDate.toLocal()}".split(' ')[0],),
                                ),
                                IconButton(onPressed: () => _selectDate(context), icon:Icon(Icons.arrow_drop_down_circle_sharp,size: 23,) )
                              ],),
                            ),
                            Positioned(
                                right: 126.9,
                                child: Container(height: 50, width: 124, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: HexColor("#70CBCA")),
                                  child: Center(child: Text("Reminding Date:", style: GoogleFonts.poppins(color: Colors.white),),),
                                ))
                          ],),
                        ),
                        SizedBox(height: 130,),
                        Padding(
                          padding: const EdgeInsets.only(right: 0,left: 20),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>dthchannels()));
                          },
                            child: Container(width: 255,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16),),
                                  color: HexColor("#96F4F3")),
                              child: Center(child: Text("Recharge now", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 17.6),),),
                            ),
                          ),
                        )

                      ],),
                  ),
                ),

              ),

            ])
        ),
      );
    }
  }
