import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:shop_ease/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      body:  Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections*2,),

            ///Text field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            ///Submit Button
            SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const ResetPasswordScreen()),child: Text(TTexts.submit),),),



          ],
        ),
      ),


    );
  }
}
