import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seether/noLoc.dart';

class noLoc extends StatefulWidget {
  const noLoc({Key? key}) : super(key: key);

  @override
  State<noLoc> createState() => _noLocState();
}

class _noLocState extends State<noLoc> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[    Text('Home'),    Text('Notifications'),    Text('Settings'),  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 150, 0, 20),
              child: Image.asset(
                "assets/logoSedih.png",
                alignment: Alignment.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 30),
              child: Text(
                "Mohon maaf, kami harus menutup paksa aplikasi karena tidak bisa mengakses lokasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

