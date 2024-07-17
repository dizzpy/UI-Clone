import 'package:flutter/material.dart';

import 'package:ui_clone/components/custom_appbar.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appbar
              CustomAppBar(),

              SizedBox(height: 20),

              // text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: kTextGray),
                  ),
                  Text(
                    'Hi Richard S',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 38,
                        color: kTextBlack),
                  ),
                ],
              ),

              // card
            ],
          ),
        ),
      ),
    );
  }
}
