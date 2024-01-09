import 'package:flutter/material.dart';
import 'package:taskwin/ads/applovin_ads_demo.dart';
import 'package:taskwin/controllers/back_button_controller.dart';
import 'package:taskwin/controllers/launchPopupScreen.dart';
import 'package:taskwin/controllers/local_store.dart';
import 'package:taskwin/screens/popup.dart';
import 'package:taskwin/variables/global_variables.dart';
import 'package:taskwin/variables/key_variables.dart';
import 'package:taskwin/widgets/commonbannerad.dart';
import 'package:taskwin/widgets/commontopbar.dart';
import 'package:taskwin/widgets/commonvideo.dart';

import '../widgets/commonimagescratch.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  // TODO: implement key
  Key? get key => videoStateKey;
  @override
  State<Videos> createState() => VideosState();
}

class VideosState extends State<Videos> {

  void refresh()async{
    gameCoins = await increaseGameCoin(50);
    launchPopupScreen(context, PopUp(coins: 50));
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onBackPressed(context);
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: applovinBanner(),

        backgroundColor: Colors.cyan.shade900,
        body: ListView(
          children: [
            const CommonTop(left: 110, text: "VIDEOS"),

            Padding(
              padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [Color(0xff77767b),Color(0xff3c3b3e)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(gameCoins.toString(),textAlign: TextAlign.right,style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            //color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/coin2.png"),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 62,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(colors: [Color(0xff000000),Color(0xff545454)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: Text("Watch Videos and Earn 50 Coins Each",textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                    ),
            ),
                ],
              ),
            ),

            const CommonVideo(top: 20),
            const CommonVideo(top: 20),
            const CommonVideo(top: 20),
            const CommonVideo(top: 20),
            const CommonVideo(top: 20),
            const CommonVideo(top: 20),


            const CommonImage(top: 30,index: 4,)
          ],
        ),
      ),
    );
  }
}
