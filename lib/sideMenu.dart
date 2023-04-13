import 'package:flutter/material.dart';
import 'package:seether/detail_loc.dart';

import 'package:seether/location.dart';
import 'package:seether/TC.dart';
import 'package:seether/detail.dart';
import 'package:seether/utama.dart';
import 'package:seether/version.dart';
import 'package:seether/pilLoc.dart';

class sideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
          decoration: BoxDecoration(
              color: Color(0xFF06283D),
          ), child:
      ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('Settings', style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const utama()),);
            },
// ubah warna background menjadi biru
            tileColor: Color(0xFF06283D),
            contentPadding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
            shape: Border(bottom: BorderSide(color: Colors.white)),
          ),
          Divider(color: Colors.white, thickness: 2,),
          ListTile(
            title: Text('Home', style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const utama()),);
            },
// ubah warna background menjadi biru
            tileColor: Color(0xFF06283D),
          ),
          Divider(color: Colors.white, thickness: 1,),
          ListTile(
            title: Text('Sekitar', style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const detail_loc()),);
            },
// ubah warna background menjadi biru
            tileColor: Color(0xFF06283D),
          ),
          Divider(color: Colors.white, thickness: 1,),
          ListTile(
            title: Text('Term & Condition', style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TC()),);
            },
            tileColor: Color(0xFF06283D),
          ),
          Divider(color: Colors.white, thickness: 1,),
          ListTile(
            title: Text('Seacrh', style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const pilLoc()),);
            },
// ubah warna background menjadi biru
            tileColor: Color(0xFF06283D),
          ),
          Divider(color: Colors.white, thickness: 1,),
          ListTile(
            title: Text('Versi', style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const version()),);
            },
            tileColor: Color(0xFF06283D),
          ),
        ],
      )),
    );
  }
}
