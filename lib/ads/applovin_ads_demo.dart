import 'dart:math';

import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/widgets.dart';
import 'package:taskwin/variables/global_variables.dart';

String _sdkKey = "YOUR_SDK_KEY";
String _interstitial_ad_unit_id = "ANDROID_INTER_AD_UNIT_ID";
String _rewarded_ad_unit_id = "ANDROID_REWARDED_AD_UNIT_ID";
String _banner_ad_unit_id = "ANDROID_BANNER_AD_UNIT_ID";





void initApplovinAds()async{
  Map? sdkConfiguration = await AppLovinMAX.initialize(_sdkKey);
  initializeInterstitialAds();
  initializeRewardedAds();
  initializeBannerAds();
}

void setApplovinIds(){
     _sdkKey = "";
    _interstitial_ad_unit_id = "";
    _rewarded_ad_unit_id = "";
    _banner_ad_unit_id = "";
}


void initializeBannerAds()
{
  // Banners are automatically sized to 320x50 on phones and 728x90 on tablets
  AppLovinMAX.createBanner(_banner_ad_unit_id, AdViewPosition.bottomCenter);

}

Widget applovinBanner(){
  return MaxAdView(
      adUnitId: _banner_ad_unit_id,
      adFormat: AdFormat.banner,
      listener: AdViewAdListener(onAdLoadedCallback: (ad) {

      }, onAdLoadFailedCallback: (adUnitId, error) {

      }, onAdClickedCallback: (ad) {

      }, onAdExpandedCallback: (ad) {

      }, onAdCollapsedCallback: (ad) {

      })
  );
}




///interstitial


var _interstitialRetryAttempt = 0;

void initializeInterstitialAds() {

  AppLovinMAX.setInterstitialListener(InterstitialListener(
    onAdLoadedCallback: (ad) {
      // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
      print('Interstitial ad loaded from ' + ad.networkName);

      // Reset retry attempt
      _interstitialRetryAttempt = 0;
    },
    onAdLoadFailedCallback: (adUnitId, error) {
      // Interstitial ad failed to load
      // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
      _interstitialRetryAttempt = _interstitialRetryAttempt + 1;

      int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();

      print('Interstitial ad failed to load with code ' + error.code.toString() + ' - retrying in ' + retryDelay.toString() + 's');

      Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
        AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
      });
    },
    onAdDisplayedCallback: (ad) {
      AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
    },
    onAdDisplayFailedCallback: (ad, error) {
      AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
    },
    onAdClickedCallback: (ad) {
      AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
    },
    onAdHiddenCallback: (ad) {

    },
  ));

  // Load the first interstitial
  AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
}

void showApplovinInterstitialAds()async{
  if(objLive==false){
    return;
  }
  if(gameCoins<5000){
    return;
  }
  bool isReady = (await AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id))!;
  if (isReady) {
    AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
  }
  else{
    AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
    showApplovinRewardedAds();
  }
}


///reward ads

var _rewardedAdRetryAttempt = 0;

void initializeRewardedAds() {
  AppLovinMAX.setRewardedAdListener(
      RewardedAdListener(onAdLoadedCallback: (ad) {
        // Rewarded ad is ready to be shown. AppLovinMAX.isRewardedAdReady(_rewarded_ad_unit_id) will now return 'true'
        print('Rewarded ad loaded from ' + ad.networkName);

        // Reset retry attempt
        _rewardedAdRetryAttempt = 0;
      },
          onAdLoadFailedCallback: (adUnitId, error) {
            // Rewarded ad failed to load
            // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
            _rewardedAdRetryAttempt = _rewardedAdRetryAttempt + 1;

            int retryDelay = pow(2, min(6, _rewardedAdRetryAttempt)).toInt();
            print('Rewarded ad failed to load with code ' +
                error.code.toString() + ' - retrying in ' +
                retryDelay.toString() + 's');

            Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
              AppLovinMAX.loadRewardedAd(_rewarded_ad_unit_id);
            });
          },
          onAdDisplayedCallback: (ad) {
            AppLovinMAX.loadRewardedAd(_rewarded_ad_unit_id);
          },
          onAdDisplayFailedCallback: (ad, error) {
            AppLovinMAX.loadRewardedAd(_rewarded_ad_unit_id);
          },
          onAdClickedCallback: (ad) {
            AppLovinMAX.loadRewardedAd(_rewarded_ad_unit_id);
          },
          onAdHiddenCallback: (ad) {

          },
          onAdReceivedRewardCallback: (ad, reward) {

          }));
  // Load the first interstitial
  AppLovinMAX.loadRewardedAd(_rewarded_ad_unit_id);
}


void showApplovinRewardedAds()async{
  if(objLive==false){
    return;
  }
  if(gameCoins<5000){
    return;
  }
  bool isReady = (await AppLovinMAX.isRewardedAdReady(_rewarded_ad_unit_id))!;
  if (isReady) {
    AppLovinMAX.showRewardedAd(_rewarded_ad_unit_id);
  }
  else {
      AppLovinMAX.loadRewardedAd(_rewarded_ad_unit_id);
  }
}