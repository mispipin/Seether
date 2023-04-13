import 'package:flutter/material.dart';
import 'package:seether/utama.dart';

class TC extends StatefulWidget {
  const TC({Key? key}) : super(key: key);

  @override
  State<TC> createState() => _TCState();
}

class _TCState extends State<TC> {
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
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Term & Condition" ,style: TextStyle(color: Colors.white, fontSize: 30),),
                    ]
                ),
              ),
              SizedBox(height: 30,),
              Container(
                // padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                margin: EdgeInsets.fromLTRB(30, 30, 10, 30),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru, cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru",
                  style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),padding: EdgeInsets.only(left: 10),
                height:100,
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const utama()),);
                },
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFF47B5FF)
                  ),
                  child: const Center(child: Text("Agree",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                ),
              )
            ],
          ),
        )
    );
  }
}
