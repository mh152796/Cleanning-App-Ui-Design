import 'package:flutter/material.dart';

import 'second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(

        margin: EdgeInsets.only(top:60),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cleanningremovebg.png',
              height: 350,
              width: MediaQuery.of(context).size.width-100,
              fit: BoxFit.fill,
              semanticLabel: "photo",
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width-250,
              height: 35,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  "Provide You",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width-250,
              height: 35,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  "Best Cleaning",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width-350,
              height: 35,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  "Service",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width-350, 50),
                backgroundColor: Colors.yellow
              ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(),)), child: Text('Go', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
            )
          ],
        ),
      ),
    );
  }
}
