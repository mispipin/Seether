import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:seether/sideMenu.dart';

class utama extends StatefulWidget {
  const utama({Key? key}) : super(key: key);

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
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
          IconButton(onPressed: null, icon: Image.asset('assets/loc.png'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_cerah.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black
                  )
              ),
              padding: EdgeInsets.fromLTRB(10, 10, 180, 0),
              child: Text("Hei, Sora", style: TextStyle(color: Colors.white, fontSize: 50),),
            ),
            Container(
              // padding: EdgeInsets.zero,
              child: Text("Bagaimana kondisi mu hari ini?", style: TextStyle(color: Colors.white, fontSize: 18)),
              padding: EdgeInsets.fromLTRB(10, 0, 125, 0),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: 340,
              // height: 70,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      backgroundColor: Color.fromRGBO(0, 179, 255, 0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Kemarin",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      backgroundColor: Color.fromRGBO(0, 179, 255, 0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Hari Ini",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 24
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      backgroundColor: Color.fromRGBO(0, 179, 255, 0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Besok",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 30,),
            Image.asset("assets/sun.png"),
            Container(
              child: Text("27", style: TextStyle(fontSize: 20,color: Colors.white),),
            ), Container(
              child: Text("Isekai Barat", style: TextStyle(fontSize: 24,color: Colors.white), ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left:0),
                  child: Text("Hari ini", style: TextStyle(fontSize: 24,color: Colors.white), ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 75,
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: const Text('27'),
                    ),
                    Container(
                      height: 100,
                      width: 75,
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: const Text('27'),
                    ),
                    Container(
                      height: 100,
                      width: 75,
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: const Text('27'),
                    ),
                    Container(
                      height: 100,
                      width: 75,
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: const Text('27'),
                    ),
                    Container(
                      height: 100,
                      width: 75,
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: const Text('27'),
                    ),
                    Container(
                      height: 100,
                      width: 75,
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0x8047B5FF),
                      ),
                      alignment: Alignment.center,
                      child: const Text('27'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
