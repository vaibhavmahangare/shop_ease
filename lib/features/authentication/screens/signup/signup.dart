import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/common/widgets_login_signup/form_divider.dart';
import 'package:shop_ease/common/widgets_login_signup/social_buttons.dart';
import 'package:shop_ease/features/authentication/screens/signup/signupform.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title 
              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///form
              TSignupForm(),

              ///Divider
              const SizedBox(height: TSizes.spaceBtwItems,),
               TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              ///Social buttons
              const TSocialButtons(),
            ],
          ),
        ) ,
      ),
    );
  }
}


