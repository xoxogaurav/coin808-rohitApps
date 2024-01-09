import 'package:flutter/material.dart';

class CommonMath extends StatelessWidget {
  final double top;
  final String text;
  final String text2;
  const CommonMath({Key? key, required this.top, required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(text,textAlign: TextAlign.center,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )),
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(text2,textAlign: TextAlign.center,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
