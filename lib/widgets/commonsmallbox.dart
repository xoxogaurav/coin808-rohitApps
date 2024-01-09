import 'package:flutter/material.dart';


class CommonSmallBox extends StatelessWidget {
  final String text;
  final String img;
  final double width;
  const CommonSmallBox({Key? key, required this.text, required this.img, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
    height: 75,
    width: 85,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(18),
    border: Border.all(color: Colors.white,style: BorderStyle.solid,width: 4),
    gradient: const LinearGradient(colors: [Color(0xff77767b),Color(0xff3c3b3e)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
  ),
  child: Padding(
  padding: const EdgeInsets.only(top: 6),
  child: Column(
  children: [
  Container(
  height: 35,
  width: width,
  decoration: BoxDecoration(
  //color: Colors.green,
  image: DecorationImage(image: AssetImage(img),fit: BoxFit.fill),
  ),
  ),
  Text(text,style: const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w500,
  fontSize: 15,
  ),)
  ],
  ),
  ),
  );
  }
}
