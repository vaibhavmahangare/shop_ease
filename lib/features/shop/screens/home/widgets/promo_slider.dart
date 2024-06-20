import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop_ease/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
   TPromoSlider({
    super.key, required this.banners,
  });

final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options:CarouselOptions(
              viewportFraction:1,
              onPageChanged: (index,_)=>controller.updatePageIndicator(index),
            ),

            items:banners.map((url)=>TRoundedImage(imageUrl:url)).toList(),
        ),
        SizedBox(height: TSizes.spaceBtwItems,),
        Obx(
              ()=>Row(
                mainAxisSize: MainAxisSize.min,
            children: [
              for(int i=0;i<banners.length;i++)  TCircularContainer(width: 15, height: 5, margin:EdgeInsets.only(right: 10) , backgroundColor: controller.carouselCurrentIndex.value==i?TColors.primary:TColors.grey,),
            ],
          ),
        )
      ],
    );
  }
}
