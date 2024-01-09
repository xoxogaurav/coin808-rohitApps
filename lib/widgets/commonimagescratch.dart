import 'package:flutter/material.dart';
import 'package:taskwin/controllers/launch_custom_tab.dart';
import 'package:taskwin/variables/model_variables.dart';

class CommonImage extends StatelessWidget {
  final double top;
  final int index;
  const CommonImage({Key? key, required this.top, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top,left: 30,right: 30,bottom: 20),
      child: InkWell(
        onTap: (){
          launchCustomTabURL(otherLinksModel.bannerLinks![index].link.toString());
        },
        child: Container(
          height: 130,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(otherLinksModel.bannerLinks![index].image.toString()),fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}

