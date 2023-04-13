import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:seether/utama.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          children: [ 
            Container(
            padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
            child:
              Text("Mari amankan harimu, karena harimu adalah hari kita bersama" ,style: TextStyle(color: Colors.white, fontSize: 30), ) ,),
            SizedBox(height: 30,),
            Image.asset('assets/logo1.png', alignment: Alignment.center,),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text("username", style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),padding: EdgeInsets.only(left: 10),
              height:50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const utama()),);
              },
              child: Container(
                child: const Center(child: Text("Login",style: TextStyle(fontSize: 20),),),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      )
    );

  }
}


