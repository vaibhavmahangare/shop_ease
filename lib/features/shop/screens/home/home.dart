import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop_ease/utils/device/device_utility.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSizes.md),
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(TSizes.md),child: Image(image:AssetImage(TImages.banner3))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


