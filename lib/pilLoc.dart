import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seether/location.dart';
import 'package:seether/sideMenu.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class pilLoc extends StatefulWidget {
  const pilLoc({Key? key}) : super(key: key);

  @override
  _pilLocState createState() => _pilLocState();
}

class _pilLocState extends State<pilLoc> {
  final TextEditingController _searchController = TextEditingController();
  String _locationName = "";
  String _temperature = "";
  String _description = "";

  Future<void> _fetchWeatherData(String location) async {
    final String apiKey = "76297924b9e6723f1a83435e83b77106";
    final String apiUrl =
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric";

    final response = await http.get(Uri.parse(apiUrl));
    final data = json.decode(response.body);

    if (data["cod"] == 200) {
      setState(() {
        _locationName = data["name"];
        _temperature = data["main"]["temp"].toString() + " °C";
        _description = data["weather"][0]["description"];
      });
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Failed to fetch data from API."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
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
        padding: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_cerah.png"),
            fit: BoxFit.cover
          ),
        ),
        child : Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search Location",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => _fetchWeatherData(_searchController.text),
                  ),
                ),
                onSubmitted: (value) => _fetchWeatherData(value),
              ),
              SizedBox(height: 20),
              Text(
                "Location: $_locationName",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                "Temperature: $_temperature",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                "Description: $_description",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
