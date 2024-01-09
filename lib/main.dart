import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:taskwin/Networking/web.dart';
import 'package:taskwin/ads/applovin_ads_demo.dart';
import 'package:taskwin/ads/unity_ads_demo.dart';
import 'package:taskwin/screens/dailytask.dart';
import 'package:taskwin/screens/game.dart';
import 'package:taskwin/screens/mathgame.dart';
import 'package:taskwin/screens/resume_tracking_screen.dart';
import 'package:taskwin/screens/scratch.dart';
import 'package:taskwin/screens/spin.dart';
import 'package:taskwin/screens/startpg.dart';
import 'package:taskwin/screens/videos.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  initUnityAds();
  initApplovinAds();
  initOnesignal();
  String check = await otherLinksDataFetch();
  if(check!="0"){
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Win',
      themeMode: ThemeMode.light,

      routes: {
        "/":(context)=>const StartPg(),
        "/startpg":(context)=>const StartPg(),
        "/game":(context)=>const Games(),
        "/scratch":(context)=>const Scratch(),
        "/spin":(context)=>const Spin(),
        "/videos":(context)=>const Videos(),
        "/dailytask":(context)=>const DailyTask(),
        "/mathgame":(context)=>const Math(),
        "/tracking":(context)=>const ResumeTrackingScreen(),
      },
    );
  }
}




void initOnesignal(){
  //Remove this method to stop OneSignal Debugging
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("8d28ace6-5de0-4bee-87e8-1b58fbc191b1");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
  });
}