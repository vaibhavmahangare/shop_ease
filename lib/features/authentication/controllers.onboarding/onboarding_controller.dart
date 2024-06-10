
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //Variables

  final pageController =PageController();
  Rx<int> currentPageIndex=0.obs;

//Update index on page scroll
void updatePageIndicator(index) => currentPageIndex.value=index;

  //jump to specific dot selected page
void dotNavigationClick(index) {
  currentPageIndex.value = index;
  pageController.jumpTo(index);
}
  //Update Current index and jump to next
void nextPage() {
  if(currentPageIndex.value==2){
     Get.offAll(()=>const LoginScreen());
  }
  else
    {
     int page = currentPageIndex.value+1;
     pageController.jumpToPage(page);
    }
}

  //Update current index and jump to last page
  void skipPage(){
  currentPageIndex.value=2;
  pageController.jumpToPage(2);
  }
}
