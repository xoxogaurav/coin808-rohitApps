import 'package:flutter/material.dart';
import 'package:taskwin/ads/applovin_ads_demo.dart';
import 'package:taskwin/controllers/back_button_controller.dart';
import 'package:taskwin/variables/global_variables.dart';
import 'package:taskwin/widgets/commonimagescratch.dart';
import 'package:taskwin/widgets/commontask.dart';
import 'package:taskwin/widgets/commontopbar.dart';

class DailyTask extends StatefulWidget {
  const DailyTask({Key? key}) : super(key: key);

  @override
  State<DailyTask> createState() => _DailyTaskState();
}

class _DailyTaskState extends State<DailyTask>  {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onBackPressed(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.cyan.shade900,
        bottomNavigationBar: applovinBanner(),
        body: ListView(
          children: [
            const CommonTop(left: 50, text: "DAILY TASK"),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
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
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xff00001b),
                  border: Border.all(color: const Color(0xff707070),width: 3),
                ),
                child: Center(
                  child: Text("Visit Site and Stay 30 sec & Win 100 Coins Each",textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
                ),
              ),
            ),

            const CommonTask(top: 20,index: 2,),
            const CommonTask(top: 20,index: 3,),
            const CommonTask(top: 20,index: 4,),
            const CommonTask(top: 20,index: 5,),
            const CommonTask(top: 20,index: 6,),

            const CommonImage(top: 30,index: 2,)
          ],
        ),
      ),
    );
  }
}
