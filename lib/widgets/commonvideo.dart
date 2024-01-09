import 'package:flutter/material.dart';
import 'package:taskwin/ads/applovin_ads_demo.dart';
import 'package:taskwin/ads/unity_ads_demo.dart';
import 'package:taskwin/controllers/local_store.dart';
import 'package:taskwin/variables/global_variables.dart';
import 'package:taskwin/variables/key_variables.dart';

class CommonVideo extends StatelessWidget {
  final double top;
  const CommonVideo({Key? key, required this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void watchVideo()async{
      if(DateTime.now().hour % 2 == 0){
        showApplovinRewardedAds();
      }
      else{
        showUnityInterstitial();
      }
      videoStateKey.currentState!.refresh();
    }

    return   Padding( ///reuse
      padding: EdgeInsets.only(top: top,left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){
              watchVideo();
            },
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35),bottomLeft: Radius.circular(35)),
                color: const Color(0xffff8888),
                border: Border.all(color: Colors.black),
              ),
              ///text
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text("Watch Video",textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 55,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/clicker.png"),fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              watchVideo();
            },
            child: Container(
              height: 70,
               decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
                color: const Color(0xffff8888),
                border: Border.all(color: Colors.black),
              ),
              ///text
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text("Watch Video",textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 55,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/clicker.png"),fit: BoxFit.fill),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
