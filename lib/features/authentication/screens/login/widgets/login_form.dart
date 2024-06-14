import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:shop_ease/features/authentication/screens/signup/signup.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical:TSizes.spaceBtwItems),
          child: Column(
            children: [
              ///Email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon:Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                ),
              ),
              const SizedBox(height:TSizes.spaceBtwInputFields),
              ///Password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon:Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields/2,),

              ///Remember me and forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TTexts.rememberMe),
                    ],
                  ),
                  ///Forgot password
                  TextButton(onPressed: ()=> Get.to(()=>const ForgotPasswordScreen()), child: const Text(TTexts.forgetPassword),),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Signin button
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: Text(TTexts.signIn))),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ///create account button
              SizedBox(width:double.infinity,child: OutlinedButton(onPressed: ()=> Get.to(()=>const SignupScreen()), child: Text(TTexts.createAccount))),

            ],

          ),
        )
    );
  }
}