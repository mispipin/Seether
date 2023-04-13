import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg_cerah.png"),
              fit: BoxFit.cover
          ),
        ),
        padding: EdgeInsets.only(top: 40, left: 20,right: 20),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(left: 6),
                      child: Image.asset('assets/search.png'),
                    ),
                ),
              ),
            ),
            SizedBox(height: 10),
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
                          'Hole, Wanokuni, OnePiece',
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
                                    'Wanokuni Barat',
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
                                    '30',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wanokuni Barat',
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
                                    '30',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wanokuni Barat',
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
                                    '30',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wanokuni',
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
                                    '30',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wanokuni Barat',
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
                                    '30',
                                    style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Wanokuni',
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
