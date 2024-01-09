import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class TimeRemainingWidget extends StatelessWidget {
  late final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final String seconds,link,coins,type,id;

  TimeRemainingWidget({Key? key, required this.seconds, required this.link, required this.coins, required this.type, required this.id}) : super(key: key);


  void handleCancelButton(context)
  {
    removePrefs();
    Navigator.pop(context);
  }

  void handleContinueButton(context)
  {
    Navigator.pop(context);
    Navigator.pushNamed(context, "/tracking",arguments: { 'link': link , 'coin':coins.toString(),'seconds' : seconds, 'type': type, 'id' : id});
  }

  void removePrefs() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove("coin");
    prefs.remove(prefs.getString("currentLink")!);
    prefs.remove("currentLink");
    prefs.remove("type");
    prefs.remove("id");
  }

  @override
  Widget build(BuildContext context) {
    context = context;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.85),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width/1.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10),
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width/3-20,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 3,color: Colors.white)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text((int.parse(seconds)/60).toString().toString().substring(0,1),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),
                          Text("MINUTES",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width/3-20,
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 3,color: Colors.white)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text((int.parse(seconds)%60).toString(),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),
                            Text("SECONDS",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                          ],
                        )
                    ),
                  ),

                ],
              ),


               Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "You need to play for a little more time to win coins for this session!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(onPressed: (){
                    handleCancelButton(context);
                  },
                    minWidth: 120,
                    color: Colors.grey.shade400,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                        "Close"
                    ),
                  ),

                  MaterialButton(onPressed: (){
                    handleContinueButton(context);
                  },
                    minWidth: 120,
                    color: Colors.amber.shade700,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
