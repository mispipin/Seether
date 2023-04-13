import 'package:flutter/material.dart';

import 'package:seether/location.dart';
import 'package:seether/TC.dart';
import 'package:seether/detail.dart';
import 'package:seether/utama.dart';
import 'package:seether/version.dart';

class sideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Settings',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const utama()),);
            },
          ),
          ListTile(
            title: Text('Location'),
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const location()),);
              },
          ),
          ListTile(
            title: Text('Status'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('Notofication'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('detail'),
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const detail()),);
            },
          ),
          ListTile(
            title: Text('Term&Condition'),
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TC()),);
            },
          ),
          ListTile(
            title: Text('Version'),
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const version()),);
            },
          ),
        ],
      ),
    );
  }
}