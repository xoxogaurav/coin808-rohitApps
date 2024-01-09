import 'package:flutter/material.dart';
import 'package:taskwin/controllers/local_store.dart';


class StartPg extends StatefulWidget {
  const StartPg({Key? key}) : super(key: key);

  @override
  State<StartPg> createState() => _StartPgState();
}

class _StartPgState extends State<StartPg> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPrefs(context);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff9ed395),
      child: Column(
        children: [
          SizedBox(
            height: 180,
          ),
          Center(
            child: Container(
              height: 210,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("assets/images/logo1.png"),fit: BoxFit.fill),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text("Coin808",textScaleFactor: 4.5,style: TextStyle(
              fontWeight: FontWeight.bold,
              //fontSize: 60,
            ),),
          ),
        ],
      ),
    );
  }
}
