import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Feadback extends StatefulWidget {
  const Feadback({Key? key}) : super(key: key);

  @override
  State<Feadback> createState() => _FeadbackState();
}

class _FeadbackState extends State<Feadback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 150, 0, 20),
              child: Image.asset("assets/flat.png", alignment: Alignment.center,),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 30),
              child: Text("Terima kasih atas masukan dan saran yang telah anda berikan kepada SeeTher", style: TextStyle(color: Colors.white, fontSize: 30),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
