import 'package:flutter/material.dart';
import 'package:seether/utama.dart';

class version extends StatefulWidget {
  const version({Key? key}) : super(key: key);

  @override
  State<version> createState() => _versionState();
}

class _versionState extends State<version> {
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
                Row (
                    children: [
                      InkWell(
                        onTap: (){Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const utama()),);
                        }, // Image tapped
                        splashColor: Colors.white10, // Splash color over image
                        child: Ink.image(
                          fit: BoxFit.cover, // Fixes border issues
                          width: 30,
                          height: 30,
                          image: AssetImage(
                              'assets/back.png'
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Text("Version" ,style: TextStyle(color: Colors.white, fontSize: 30),),
                    ]
                ),
              ),
              SizedBox(height: 30,),
              Container(
                // padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                margin: EdgeInsets.fromLTRB(30, 70, 10, 30),
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(height: 10),
              Container(child: Text("Beta", style: TextStyle(color: Colors.white, fontSize: 20),),),
              SizedBox(height: 5),
              Container(child: Text("Version1.0", style: TextStyle(color: Colors.white, fontSize: 20),))
            ],
          ),
        )
    );
  }
}
