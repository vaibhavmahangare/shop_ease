import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, required this.title,  this.buttonTitle='View All', this.textColor, this.showActionButton=false, this.onPressed,
  });

  final String title,buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}








