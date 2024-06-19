import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_categories.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:SingleChildScrollView(

        child: Column(
          children: [
            TPrimaryHeaderContainer(
            child:Column(
              children:[
                ///--AppBar--
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections,),
                ///--SearchBar--
                TSearchContainer(text: 'Search In Store',),
                SizedBox(height: TSizes.spaceBtwSections,),

                ///---Catagories---
                Padding(
                    padding: EdgeInsets.only(left:TSizes.defaultSpace),
                    child:Column(
                      children: [
                        ///---Heading---
                        TSectionHeading(title:'Popular Catagories' ,showActionButton: false,textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        
                        ///---Catagories---
                        THomeCategories(),
                      ],
                    ) ,
                ),
            ],
            ),
              
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: CarouselSlider(
                options:CarouselOptions(
                    viewportFraction:0.8,)
    )
                items:[
                  TRoundedImage(imageUrl: TImages.banner3,),
                  TRoundedImage(imageUrl: TImages.banner3,),
                  TRoundedImage(imageUrl: TImages.banner3,),
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}

