import 'package:flutter/material.dart';

class Fb_form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Feadback',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: SizedBox(
                      height: 24,
                    width: 24,
                    child: IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/flat.png',
            width: 200,
            height: 200,
          ),
          SizedBox(height: 20),
          Text(
            'Terima kasih kamu sudah meluangkan waktu untuk mengsii feedback kepada kami SeeTher',
            style: TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.white,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Kirim'),
            ),
          ),
        ],
      ),
    );
  }
}
