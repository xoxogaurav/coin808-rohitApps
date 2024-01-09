import 'package:flutter/material.dart';
import 'package:taskwin/controllers/launch_custom_tab.dart';
import 'package:taskwin/variables/global_variables.dart';
import 'package:taskwin/variables/model_variables.dart';
import 'package:taskwin/widgets/commonbottom.dart';

import 'package:taskwin/widgets/commonbox.dart';

import '../widgets/commonsmallbox.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
          gradient: LinearGradient(colors: [Colors.cyan.shade900,Colors.cyan],begin: Alignment.topCenter,end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [

                if(objLive)
                InkWell(
                    onTap:(){
                      launchCustomTabURL(otherLinksModel.otherlinks![14].link.toString());
                },
                    child: const CommonBottom(text: "Redeem", size: 30,img: "assets/images/wallet.png",)),

                if(objLive)
                  InkWell(
                    onTap:(){
                      launchCustomTabURL(otherLinksModel.otherlinks![15].link.toString());
                    },
                    child: const CommonBottom(text: "History", size: 30,img: "assets/images/cash-flow.png",)),
                InkWell(
                    onTap:(){
                      launchCustomTabURL(otherLinksModel.otherlinks![16].link.toString());
                    },
                    child: const CommonBottom(size: 42,img: "assets/images/spinwheel gif1.gif",)),
                InkWell(
                    onTap:(){
                      launchCustomTabURL(otherLinksModel.otherlinks![17].link.toString());
                    },
                    child: const CommonBottom(size: 50,img: "assets/images/spinwheel gif2.gif",)),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.cyan.shade900,
      body: Scrollbar(
        child: ListView(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.cyan.shade900,Colors.cyan],begin: Alignment.topCenter,end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text("Coin808",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),),
                    ),

                    const Spacer(),

                    InkWell(
                      onTap: (){
                        launchCustomTabURL(otherLinksModel.otherlinks![8].link.toString());
                      },
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: const BoxDecoration(
                          //color: Colors.yellow,
                          image: DecorationImage(image: AssetImage("assets/images/salary.png"),fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: (){
                          launchCustomTabURL(otherLinksModel.otherlinks![7].link.toString());
                        },
                        child: Container(
                          height: 40,
                          width: 50,
                          decoration: const BoxDecoration(
                            //color: Colors.yellow,
                            image: DecorationImage(image: AssetImage("assets/images/infoicon.png"),fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                height: 58,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  //color: Colors.blue,
                  gradient: LinearGradient(colors: [Color(0xff77767b),Color(0xff3c3b3e)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text("20000 coins = 400",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),),
                      Text("Minimum Redeem = 400",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 0,right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(colors: [Color(0xff77767b),Color(0xff3c3b3e)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children:  [
                          const Text("Total Coins",style: TextStyle(
                            color: Colors.white,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(gameCoins.toString(),style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(colors: [Color(0xff77767b),Color(0xff3c3b3e)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children:  [
                          const Text("Total Value",style: TextStyle(
                            color: Colors.white,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text((gameCoins/50).toString(),style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const CommonBox(text: "Spin & Win", img: "assets/images/spingif1.png", width: 100, top: 20, width2: 120, text2: "Scratch & Win", img2: "assets/images/win.png",route1: "/spin",route2: "/scratch",),

            if(objLive)
            CommonBox(text: "Earn More", img: "assets/images/coins.png", width: 100, top: 10, width2: 120, text2: "Daily Task", img2: "assets/images/daily-tasks.png",route1: otherLinksModel.otherlinks![1].link.toString(),route2: "/dailytask",),
            const CommonBox(text: "Math Solve", img: "assets/images/puzzle.png", width: 100, top: 10, width2: 100, text2: "Watch & Win", img2: "assets/images/play.png",route1: "/mathgame",route2: "/videos",),
            CommonBox(text: "Play Game", img: "assets/images/money.png", width: 100, top: 10, width2: 120, text2: "Daily Win", img2: "assets/images/award.png",route1: otherLinksModel.otherlinks![9].link.toString() ,route2: otherLinksModel.otherlinks![10].link.toString(),),


            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  InkWell(
                      onTap: (){
                        launchCustomTabURL(otherLinksModel.otherlinks![11].link.toString());
                      },
                      child: const CommonSmallBox(text: "Contact", img: "assets/images/email.png", width: 50)),
                  InkWell(
                      onTap: (){
                        launchCustomTabURL(otherLinksModel.otherlinks![12].link.toString());
                      },
                      child: const CommonSmallBox(text: "Share", img: "assets/images/sharing.png", width: 40)),

                  InkWell(
                      onTap: (){
                        launchCustomTabURL(otherLinksModel.otherlinks![13].link.toString());
                      },
                      child: const CommonSmallBox(text: "Profile", img: "assets/images/user.png", width: 40)),

                ],
              ),
            ),
      ],
        ),
      ),
    );
  }
}
