import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_ease/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shop_ease/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/promo_slider.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///--AppBar--
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///--SearchBar--
                  TSearchContainer(text: 'Search In Store',),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///---Catagories---
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///---Heading---
                        TSectionHeading(title: 'Popular Catagories',
                          showActionButton: false,
                          textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),

                        ///---Catagories---
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),

            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  ///---Promo Slider (horizontal carousal banners)---
                  TPromoSlider(banners: const [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3,
                    TImages.banner4,
                    TImages.banner5
                  ],),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  ///---Heading---
                  TSectionHeading(title: 'Popular Products',onPressed: (){},showActionButton: true,),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  ///---Popular products---


                  TGridLayout(itemCount: 4,itemBuilder: (_,index)=>TProductCardVertical(),),

                ],
              ),

            )
          ],

        ),
      ),
    );
  }
}


