import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ease/common/widgets/appbar/appbar.dart';
import 'package:shop_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shop_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shop_ease/common/widgets/layout/grid_layout.dart';
import 'package:shop_ease/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shop_ease/common/widgets/texts/section_heading.dart';
import 'package:shop_ease/utils/constants/enums.dart';
import 'package:shop_ease/utils/constants/image_strings.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_brandtitle_with_verfiedicon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
      
        ///---AppBar---
        appBar: TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCartCounterIcon(onPressed: (){},),
          ],
        ),
      
        ///---Body---
        body: NestedScrollView(headerSliverBuilder:(_,innerBoxIsScrollabled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)?TColors.black:TColors.white,
              expandedHeight: 440,
              
              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child:ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap:true ,
                  children: [
                    ///---Search Bar---
                    SizedBox(height: TSizes.spaceBtwItems,),
                    TSearchContainer(text: 'Search In Store',showBorder: true,showBackground: false,padding: EdgeInsets.zero,),
                    SizedBox(height:TSizes.spaceBtwSections,),
      
                    ///Featured Brands
                    TSectionHeading(title: "Featured Brands",showActionButton: true,onPressed: (){},),
                    const SizedBox(height: TSizes.spaceBtwItems/1.5,),
      
                    TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index){
                      return TBrandCard(showBorder: true,);
                    })
                  ],
                ) ,
              ),
      
              ///---tABS---
              ///
              bottom: const TTabBar(tabs: [
                Tab(child: Text("Sports"),),
                Tab(child: Text("Electronics"),),
                Tab(child: Text("Clothing"),),
                Tab(child: Text("Cosmetics"),),
                Tab(child: Text("Furniture"),),
              ],),
            ),
          ];
        },
          body:TabBarView(
          children: [
            Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///---Brands
                TBrandShowcase()
                ///Products
              ],
            ),
            )
          ],
        ),
        ),
      ),
    );
  }
}

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,

      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(

        children: [
          ///---Brands with product count---
          TBrandCard(showBorder: false,),

          ///---Brands top 3 images---
          Row(
            children: [
              Expanded(
                child: TRoundedContainer(
                  height: 100,

                  backgroundColor:THelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light ,
                  margin: EdgeInsets.only(right: TSizes.sm),
                  padding: EdgeInsets.all(TSizes.md),
                  child: Image(fit:BoxFit.contain ,image: AssetImage(TImages.productImage3),),
                ),
              ),
              Expanded(
                child: TRoundedContainer(
                  height: 100,
                  backgroundColor:THelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light ,
                  margin: EdgeInsets.only(right: TSizes.sm),
                  padding: EdgeInsets.all(TSizes.md),
                  child: Image(fit:BoxFit.contain ,image: AssetImage(TImages.productImage5),),
                ),
              ),
              Expanded(
                child: TRoundedContainer(
                  height: 100,
                  backgroundColor:THelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light ,
                  margin: EdgeInsets.only(right: TSizes.sm),
                  padding: EdgeInsets.all(TSizes.md),
                  child: Image(fit:BoxFit.contain ,image: AssetImage(TImages.productImage10),),
                ),
              ),
            ],
          )
        ],

      ),
    );
  }
}

