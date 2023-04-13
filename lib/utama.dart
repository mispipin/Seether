import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:seether/sideMenu.dart';
import 'package:seether/location.dart';

class utama extends StatefulWidget {
  const utama({Key? key}) : super(key: key);

  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<utama> {
  late double _latitude;
  late double _longitude;
  late String _locationName = '';
  late double _temperature;

  Future<void> _getCurrentLocation() async {
    final locationData = await Location().getLocation();
    setState(() {
      _latitude = locationData.latitude!;
      _longitude = locationData.longitude!;
    });
    _getLocationName(_latitude, _longitude);
  }

  Future<void> _getLocationName(double latitude, double longitude) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/geo/1.0/reverse?lat=$latitude&lon=$longitude&limit=1&appid=76297924b9e6723f1a83435e83b77106');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      setState(() {
        _locationName = responseData[0]['name'];
      });
      _getTemperature(latitude, longitude);
    }
  }

  Future<void> _getTemperature(double latitude, double longitude) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=76297924b9e6723f1a83435e83b77106&units=metric');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      setState(() {
        _temperature = responseData['main']['temp'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
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
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Center(
              child: Image.asset("assets/sun.png"),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "ini suhu dari $_locationName",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                _temperature == null
                    ? 'Memuat suhu...'
                    : '${_temperature.toStringAsFixed(1)}°C',
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lokasi: $_locationName",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
