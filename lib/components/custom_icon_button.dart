import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_clone/const/colors.dart';

class CustomIconButton extends StatelessWidget {
  // final double rad;
  // final String path;
  const CustomIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kIconButtonBG,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SvgPicture.asset('assets/setting.svg'),
      ),
    );
  }
}
