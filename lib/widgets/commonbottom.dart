import 'package:flutter/material.dart';


class CommonBottom extends StatelessWidget {

  final double size;
  final String img;
  final String text;
  const CommonBottom({Key? key, this.text="", required this.size, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              color: Colors.transparent,
            image: DecorationImage(image: AssetImage(img),fit: BoxFit.fill),
          ),
        ),
        if(text!="")
        Text(text,style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),)
      ],
    );
  }
}
