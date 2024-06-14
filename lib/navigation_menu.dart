import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/features/shop/screens/home/home.dart';
import 'package:shop_ease/utils/constants/colors.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller =Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar:Obx(
        ()=> NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:(index)=> controller.selectedIndex.value=index,
          backgroundColor: dark?TColors.black:TColors.white,
          destinations: const [

            NavigationDestination(icon:Icon( Iconsax.home), label: 'Home'),
            NavigationDestination(icon:Icon( Iconsax.shop), label: 'Store'),
            NavigationDestination(icon:Icon( Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon:Icon( Iconsax.user), label: 'Profile'),

          ],
        ),
      ) ,
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  final screens =[const HomeScreen(),Container(color: Colors.purple,),Container(color: Colors.orange,),Container(color: Colors.black,),];
}

