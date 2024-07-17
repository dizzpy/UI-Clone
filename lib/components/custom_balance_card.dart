import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_clone/const/colors.dart';

class CustomBalanceCard extends StatelessWidget {
  const CustomBalanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kCardBGBlack,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                // svg
                Container(
                  decoration: BoxDecoration(
                    color: kPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      'assets/wallet.svg',
                      color: kWhite,
                    ),
                  ),
                ),

                SizedBox(width: 20),

                // container
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Availabale Balance',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '\$27,980.24',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                          color: Color.fromARGB(255, 223, 223, 223)),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              width: 4,
            ),

            // precentage
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: kDarkCardBG,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    '+13%',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: kPurple),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}