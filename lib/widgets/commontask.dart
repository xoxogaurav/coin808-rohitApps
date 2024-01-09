import 'package:flutter/material.dart';
import 'package:taskwin/controllers/launch_custom_tab.dart';
import 'package:taskwin/controllers/local_store.dart';
import 'package:taskwin/variables/model_variables.dart';

class CommonTask extends StatelessWidget {
  final double top;
  final int index;
  const CommonTask({Key? key, required this.top, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding( ///reuse
      padding: EdgeInsets.only(top: top,left: 20,right: 20),
      child: Container(
        height: 110,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xffff8888),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Visit Site and Stay 30 sec & Win 100 Coins Each",textAlign: TextAlign.center,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            )),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/tracking',arguments: {"link":otherLinksModel.otherlinks![index].link.toString(),"coin":"50","seconds":"60","type":"task","id":index.toString()});
                  //launchCustomTabURL(otherLinksModel.otherlinks![index].link.toString());
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width-100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color(0xff9ed395),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("Start",textAlign: TextAlign.center,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                      Container(
                        height: 35,
                        width: 38,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/clicker.png"),fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

