import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pilLoc extends StatefulWidget {
  const pilLoc({Key? key}) : super(key: key);

  @override
  State<pilLoc> createState() => _pilLocState();
}

class _pilLocState extends State<pilLoc> {
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
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.3),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('assets/search.png'),
                      width: 18,
                    )
                ),
              ),
            ),
            Container(
              child: Text("dummy"),
            )
          ],
        ),
      ),

    );
  }
}
