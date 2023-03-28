import 'package:flutter/material.dart';

class BuildMiddleRow extends StatelessWidget {
  String text;
  String Value;
  double padValue;

  BuildMiddleRow(this.text, this.Value, this.padValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: text == 'Bedroom'
          ? EdgeInsets.only(left: padValue)
          : EdgeInsets.only(right: padValue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment.center,
            width: 110,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("-",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Text(
                  Value,
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "+",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
