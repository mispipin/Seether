import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seether/location.dart';
import 'package:seether/sideMenu.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  List detailKey = [
    'Suasana',
    'Kelembapan',
    'Angin',
    'Celcius',
    'Farenhit',
    'Kelvin'
  ];
  List detailValue = ['Cerah', '72', '72', '72', '72', '72'];

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
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_cerah.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Detail for today",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign
                    .center, // membuat teks berada di tengah secara vertikal
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: GridView.builder(
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 50,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(right: 5)),
                          Text(
                            detailKey[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            detailValue[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ));
                },
              ),
            ),
            Column(
              children: List.generate(10, (index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 60.0),
                            child: Text(
                              '9',
                              style: TextStyle(fontSize: 16, color: Colors.white,),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Cerah',
                              style: TextStyle(fontSize: 16, color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/sun.png',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
