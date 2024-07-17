import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_clone/const/colors.dart';

class CustomBalanceCard extends StatelessWidget {
  final Color cardBg;
  final String topText;
  final String balance;
  final Color topTextColor;
  final Color balanceTextColor;
  final String precentageValue;
  final Color precentageTextColor;
  final String iconPath;
  final Color iconBg;
  const CustomBalanceCard({
    super.key,
    required this.cardBg,
    required this.topText,
    required this.balance,
    required this.topTextColor,
    required this.balanceTextColor,
    required this.precentageValue,
    required this.precentageTextColor,
    required this.iconPath,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardBg,
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
                    color: iconBg,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      iconPath,
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
                      topText,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: topTextColor),
                    ),
                    SizedBox(height: 2),
                    Text(
                      balance,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: balanceTextColor,
                      ),
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
                    precentageValue,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: precentageTextColor),
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
