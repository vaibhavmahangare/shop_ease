import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_ease/common/styles/spacing_styles.dart';
import 'package:shop_ease/features/authentication/screens/login/login.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image,required this.title,required this.subtitle, required this.onPressed});

  final image,title,subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight * 2,
            child:Column(
              children: [
                ///Image
                Image(
                  image: AssetImage(image),
                  width:THelperFunctions.screenWidth()*0.6 ,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                ///Title & Subtitle
                Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections,),
                Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                ///buttons
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed:onPressed,child:const Text(TTexts.tContinue) ,),),


              ],
            ) ,
        ),
      ),
    );
  }
}

