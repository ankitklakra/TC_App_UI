import 'package:baseapp/merchandise.dart';
import 'package:flutter/material.dart';
import 'package:baseapp/home.dart';
import 'package:baseapp/vigyaan.dart';
import 'package:baseapp/aavartan.dart';
import 'package:baseapp/team.dart';
import 'package:baseapp/sponsors.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  Color c = Colors.orange.shade50;

  static List<Widget> _widgets = [
    Home(),
    AavartanPage(),
    VigyaanPage(),
    MerchandisePage(),
    SponsorsPage(),
    TeamPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      switch (index) {
        case 0:
          c = Colors.orange.shade50;
          break;
        case 1:
          c = Colors.lightGreen.shade50;
          break;
        case 2:
          c = Colors.purple.shade50;
          break;
        case 3:
          c = Colors.orange.shade50;
          break;
        case 4:
          c = Colors.lightGreen.shade50;
          break;
        case 5:
          c = Colors.purple.shade50;
          break;
      }
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
        title: Text('Technocracy'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: c,
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _onItemTap(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.rocket),
              title: Text('Aavartan'),
              onTap: () {
                _onItemTap(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.science),
              title: Text('Vigyaan'),
              onTap: () {
                _onItemTap(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Merchandise'),
              onTap: () {
                _onItemTap(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Sponsors'),
              onTap: () {
                _onItemTap(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Team'),
              onTap: () {
                _onItemTap(5);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SafeArea(child: _widgets[_selectedIndex]),
    );
  }
}
