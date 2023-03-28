import 'package:flutter/material.dart';

import 'build_middle_row.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 28,
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        //margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height / 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  buildCircleAvatar(),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Afran Nisho",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "@afran",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildMiddleRow('Bedroom', '1', 25),
                      BuildMiddleRow('Bathroom', '3', 25),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 150,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                  bottom: 5.0,
                ),
                child: Stack(
                  children: [
                    stackFirstChild(context),
                    stackPositionedChild(context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned stackPositionedChild(BuildContext context) {
    return Positioned(
                    top: MediaQuery.of(context).size.height / 4.5,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade900,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      height: MediaQuery.of(context).size.height / 4,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1,
                                          color:
                                          Colors.white.withOpacity(.6)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    '10.00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      // shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Colors.white.withOpacity(.6)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text(
                                    '12.00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
  }

  Container stackFirstChild(BuildContext context) {
    return Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFF2F4F4F),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Day",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildCircularRowInFirstStack(2),
                                buildCircularRowInFirstStack(3),
                                buildCircularRowInFirstStack(4),
                                buildCircularRowInFirstStack(5),
                                buildCircularRowInFirstStack(6),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
  }

  Container buildCircularRowInFirstStack(int num) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(3),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: Colors.white.withOpacity(.6)),

      ),
      child: Text('$num',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }


  CircleAvatar buildCircleAvatar() {
    return CircleAvatar(
      backgroundColor: Colors.white70,
      radius: 80,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/nisho.png',
        ),
        radius: 75,
      ),
    );
  }
}
