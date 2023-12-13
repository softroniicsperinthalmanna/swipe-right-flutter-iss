


import 'package:flutter/material.dart';
import 'package:swiperight/home8.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:swiperight/me9.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _bodyView = <Widget>[
    home(),
   me()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  Widget _tabItem(Widget child, {bool isSelected = false}) {
    return AnimatedContainer(
        margin: EdgeInsets.only(left:45,right: 45,top: 18),
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 500),
        decoration: !isSelected
            ? null
            : BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: HexColor('#6306B2'),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            child,

          ],
        ));
  }



  @override
  Widget build(BuildContext context) {
    List<Widget> _icons = const [
      Padding(
        padding: EdgeInsets.only(top: 4.4),
        child: Icon(Icons.home_outlined,size: 30,),
      ),
      Padding(
        padding: EdgeInsets.only(top: 4.4),
        child: Icon(Icons.person,size: 30,),
      ),
    ];

    return Scaffold(
      body: Center(
        child: _bodyView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 77,width: 10,
        padding: const EdgeInsets.all(1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            color: Colors.teal.withOpacity(0.1),
            child: TabBar(
                onTap: (x) {
                  setState(() {
                    _selectedIndex = x;
                  });
                },
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide.none,
                ),
                tabs: [
                  for (int i = 0; i < _icons.length; i++)
                    _tabItem(
                      _icons[i],

                      isSelected: i == _selectedIndex,
                    ),
                ],
                controller: _tabController),
          ),
        ),
      ),
    );
  }
}
