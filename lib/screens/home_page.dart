import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_clone/components/custom_icon_button.dart';
import 'package:ui_clone/const/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // appbar
              Row(
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
              ),

              // text
            ],
          ),
        ),
      ),
    );
  }
}
