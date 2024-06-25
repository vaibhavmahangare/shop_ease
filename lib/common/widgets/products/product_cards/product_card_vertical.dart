import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/common/widgets/images/t_rounded_images.dart';
import 'package:shop_ease/utils/constants/colors.dart';
import 'package:shop_ease/utils/constants/image_strings.dart';
import 'package:shop_ease/utils/constants/sizes.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';

import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=  THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color:dark?TColors.darkGrey:TColors.white,
        ),
        child:Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark? TColors.dark:TColors.light,
              child: Stack(
                children: [
                  ///Thumbnail image
                  TRoundedImage(imageUrl: TImages.productImage1,applyImageRadius: true,),
      
                  ///---Sale Tag---
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
      
                    ),
                  ),
      
                  ///---Favourite Icon Button---
                  Positioned(
                    top: 0,
                      right:0 ,
                      child: TCircularIcon(icon:Iconsax.heart5,color: Colors.red,)),
      
      
      
                ],
              ) ,
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            ///---Details---
      
             Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Green Nike Air Shoes',smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems/2,),
                  Row(
                    children: [
                      Text('Nike',overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.labelMedium,),
                      const SizedBox(width: TSizes.xs,),
                      Icon(Iconsax.verify5,color: TColors.primary,size: TSizes.iconXs,),
      
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      ///Price
                      TProductPriceText(price: '3999'),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:Radius.circular(TSizes.productImageRadius),
      
                          ),
      
                        ),
                        child: SizedBox(
                          width:TSizes.iconLg*1.2 ,
                            height:TSizes.iconLg*1.2,
                            child: Center(child: const Icon(Iconsax.add,color: TColors.white,))),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}




