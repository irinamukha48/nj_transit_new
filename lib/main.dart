import 'package:flutter/material.dart';
import 'package:nj_transit_new/tickets.dart';
import 'package:nj_transit_new/schedule.dart';
import 'package:nj_transit_new/home.dart';
import 'package:nj_transit_new/rewards.dart';
import 'package:nj_transit_new/more.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      themeMode: ThemeMode.light, 
      
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'i eated it'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  List _screens = [Page2(), Page1(), Page3(), Page4(), Page5()];

  // For bottom navigation bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        actions: const [
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.notifications),
        ),
        ],
        ),
      /*
      body: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 16),
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 16),
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 16),
            )
          ],
        ),
        */
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Schedule', backgroundColor: Colors.black,),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_rounded), label: 'Tickets', backgroundColor: Colors.black,),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.black,),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Rewards', backgroundColor: Colors.black,),
            BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More', backgroundColor: Colors.black,),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
        ),
      );
  }
}
