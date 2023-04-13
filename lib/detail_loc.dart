import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seether/location.dart';
import 'package:seether/sideMenu.dart';

class detail_loc extends StatefulWidget {
  const detail_loc({Key? key}) : super(key: key);

  @override
  State<detail_loc> createState() => _detail_locState();
}

class _detail_locState extends State<detail_loc> {
  Widget _buildSquareContainer(
      BuildContext context, Widget icon, Widget title, Widget subTitle) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0x800E64A3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 25.0),
          title,
          SizedBox(height: 10.0),
          subTitle,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: sideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            size:30,
            color: Colors.white),
        title: Text('Jl. D.I. Pandjaitan no.128 Purwokerto',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => location()),
              );
            },
            icon: Image.asset('assets/loc.png'),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg_cerah.png"),
              fit: BoxFit.cover
          ),
        ),
        padding: EdgeInsets.only(top: 100, left: 20,right: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                height: 100,
                width: 350,
                margin:
                EdgeInsets.only(right: 0, left: 0, top: 10, bottom: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0x800E64A3),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.location_on, color: Colors.white, size: 24,),
                        Text(
                          'Purwokerto',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Image.asset(
                          'assets/sun.png',
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Cuaca sekarang sedang cerah, ini bagus untuk bepergian, berolahraga dan bermain-main, tapi jangan terlalu lama juga yah dan selalu bawa air minum untuk menjaga tubuh.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                height: 505,
                width: 350,
                margin: EdgeInsets.only(right: 0, left: 0, top: 10, bottom: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                _buildSquareContainer(
                                  context,
                                  Container(), // placeholder widget
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Purwokerto',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  bottom: 90, // adjust this value as needed
                                  right: 0, // adjust this value as needed
                                  child: Image.asset(
                                    'assets/sun.png',
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                _buildSquareContainer(
                                  context,
                                  Container(), // placeholder widget
                                  Text(
                                    '26',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Cilacap',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  bottom: 90, // adjust this value as needed
                                  right: 0, // adjust this value as needed
                                  child: Image.asset(
                                    'assets/sun.png',
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                _buildSquareContainer(
                                  context,
                                  Container(), // placeholder widget
                                  Text(
                                    '23',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Ajibarang',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  bottom: 90, // adjust this value as needed
                                  right: 0, // adjust this value as needed
                                  child: Image.asset(
                                    'assets/sun.png',
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                _buildSquareContainer(
                                  context,
                                  Container(), // placeholder widget
                                  Text(
                                    '25',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Sokaraja',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  bottom: 90, // adjust this value as needed
                                  right: 0, // adjust this value as needed
                                  child: Image.asset(
                                    'assets/sun.png',
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                _buildSquareContainer(
                                  context,
                                  Container(), // placeholder widget
                                  Text(
                                    '26',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wangon',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  bottom: 90, // adjust this value as needed
                                  right: 0, // adjust this value as needed
                                  child: Image.asset(
                                    'assets/sun.png',
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                            child: Stack(
                              children: [
                                _buildSquareContainer(
                                  context,
                                  Container(), // placeholder widget
                                  Text(
                                    '25',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Purbalingga',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                  bottom: 90, // adjust this value as needed
                                  right: 0, // adjust this value as needed
                                  child: Image.asset(
                                    'assets/sun.png',
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
