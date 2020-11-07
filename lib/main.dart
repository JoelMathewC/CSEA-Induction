import 'package:csea/BMI.dart';
import 'package:flutter/material.dart';
import 'package:csea/Contacts.dart';
import 'package:csea/Home.dart';

void main() {
  runApp(MyApp());
}





class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  TabController _tabController;
  List<Widget> _tabList = [
    Contacts(),Home(),BMI(),
  ];
  
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: _tabList.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: _tabList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (currentIndex){
            setState(() {
              _currentIndex = currentIndex;

            });
            _tabController.animateTo(_currentIndex);
          },
          items: [

            BottomNavigationBarItem(
              label: 'Contact',
              icon: Icon(Icons.contact_page),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'BMI',
              icon: Icon(Icons.calculate),
            ),
          ],
        ),
      ),
    );
  }
}