import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: [
              Card(
                child: Column(
                  children: [Icon(Icons.airplane_ticket), Text('My tickets')],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Card(
                child: Column(
                  children: [Icon(Icons.star), Text('My rewards')],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Card(
                child: Column(
                  children: [Icon(Icons.schedule), Text('My schedule')],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Card(
                child: Column(
                  children: [Icon(Icons.more), Text('More')],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ]));
  }
}
