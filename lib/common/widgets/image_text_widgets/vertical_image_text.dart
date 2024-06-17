import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TVertivalImageText extends StatelessWidget {
  const TVertivalImageText({
    super.key, required this.image, required this.title,  this.textColor=TColors.white, this.backgroundColor=TColors.white, this.onTap,
  });

  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding:const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: backgroundColor??(THelperFunctions.isDarkMode(context)? TColors.black:TColors.white),
              ),
              child: Center(
                child: Image(image: AssetImage(image),fit: BoxFit.cover,color:THelperFunctions.isDarkMode(context)? TColors.light:TColors.dark,),
              ),
            ),

            ///---Text---
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            SizedBox(width: 55,child: Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color:textColor),maxLines: 1,overflow: TextOverflow.ellipsis,)),


          ],
        ),
      ),
    );
  }
}

