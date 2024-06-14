import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:shop_ease/features/shop/screens/home/widgets/home_appbar.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body:SingleChildScrollView(

        child: Column(
          children: [
            TPrimaryHeaderContainer(
            child:Column(
              children:[
                THomeAppBar()
            ],
            ),
              
            ),
          ],
        ),
      ),
    );
  }
}







