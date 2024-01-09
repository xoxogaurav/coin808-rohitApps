import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taskwin/ads/applovin_ads_demo.dart';
import 'package:taskwin/controllers/back_button_controller.dart';
import 'package:taskwin/controllers/launchPopupScreen.dart';
import 'package:taskwin/controllers/local_store.dart';
import 'package:taskwin/controllers/show_snackbar.dart';
import 'package:taskwin/screens/popup.dart';
import 'package:taskwin/variables/global_variables.dart';
import 'package:taskwin/widgets/commonbannerad.dart';
import 'package:taskwin/widgets/commonimagescratch.dart';
import 'package:taskwin/widgets/commontopbar.dart';

class Math extends StatefulWidget {
  const Math({Key? key}) : super(key: key);

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {


  List<String> mods=["+","-","*"];
  String q="",a1="",a2="",a3="",a4="";
  int rightAnswer=0;
  List<int> answers=[];


  void setMathQuiz(){
    int test1,test2;
    test1 = Random().nextInt(50);
    test2 = Random().nextInt(50);
    int modsTest = Random().nextInt(mods.length);
    answers.clear();
    if(mods[modsTest]=="+"){
      q = "$test1 + $test2";
      answers.add(test1+test2);
      rightAnswer = answers[0];
      answers.add(test1+test2+5);
      answers.add(test1+test2-10);
      answers.add(test1+test2+3);
    }
    else if(mods[modsTest]=="-"){
      q = "$test1 - $test2";
      answers.add(test1-test2);
      rightAnswer = answers[0];
      answers.add(test1-test2+3);
      answers.add(test1-test2-6);
      answers.add(test1-test2+9);
    }
    else if(mods[modsTest]=="*"){
      q = "$test1 * $test2";
      answers.add(test1*test2);
      rightAnswer = answers[0];
      answers.add(test1*test2+3);
      answers.add(test1*test2-6);
      answers.add(test1*test2+9);
    }
    else if(mods[modsTest]=="/"){
      q = "$test1 / $test2";
      answers.add((test1/test2.abs()) as int);
      rightAnswer = answers[0];
      answers.add((test1/test2+3.abs()) as int);
      answers.add((test1/test2-6.abs()) as int);
      answers.add((test1/test2+9.abs()) as int);
    }

    answers.shuffle();

    a1= answers[0].toString();
    a2= answers[1].toString();
    a3= answers[2].toString();
    a4= answers[3].toString();

    setState(() {

    });

  }

  void selectAnswer(int selectedValue)async{
    if(answers[selectedValue]==rightAnswer){
      launchPopupScreen(context, const PopUp(coins: 50));
      gameCoins = await increaseGameCoin(50);
      setMathQuiz();
    }
    else{
      showSnackBar(context, "Wrong Answer Try Again!!");
      setMathQuiz();
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setMathQuiz();
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
            const CommonTop(left: 40, text: "MATH SOLVE"),

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
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Container(
                height: 50,
                width: 410,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Q.\t $q = ?",textAlign: TextAlign.center,style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    selectAnswer(0);
                  },
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(a1,textAlign: TextAlign.center,style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    selectAnswer(1);
                  },
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(a2,textAlign: TextAlign.center,style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),


            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      selectAnswer(2);
                    },
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(a3,textAlign: TextAlign.center,style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                      ),
                    ),
                  ),
                  InkWell(

                    onTap: (){
                      selectAnswer(3);
                    },
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(a4,textAlign: TextAlign.center,style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const CommonImage(top: 30,index: 3,)

          ],
        ),
      ),
    );
  }
}
