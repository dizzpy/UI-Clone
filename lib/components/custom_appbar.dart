import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_clone/components/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // menu icon
        SvgPicture.asset('assets/menu.svg'),

        // setting + pfp
        Row(
          children: [
            // setting
            CustomIconButton(),

            SizedBox(width: 10),

            // pfp
            CircleAvatar(
              radius: 25,
            ),
          ],
        ),
      ],
    );
  }
}
