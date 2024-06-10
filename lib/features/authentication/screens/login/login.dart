import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/common/styles/spacing_styles.dart';
import 'package:shop_ease/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shop_ease/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shop_ease/utils/constants/image_strings.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';

import '../../../../common/widgets_login_signup/form_divider.dart';
import '../../../../common/widgets_login_signup/social_buttons.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///LOGO TITLE AND SUB-TITLE
              TLoginHeader(dark: dark),
              /// FORM
              TLoginForm(),
              ///Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///Footer
              TSocialButtons(),

            ],
          ),
          ),
        ),

      );
  }
}








