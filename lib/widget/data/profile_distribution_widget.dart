import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfitDistributionWidget extends StatelessWidget {
  const ProfitDistributionWidget({
    super.key, required this.clr, required this.title, required this.subtitle
  });

  final Color clr;
  final String title;
  final String subtitle;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: clr
              ),
            ),
            Gap(10.0),

            Text(title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ],
        ),

        Text(subtitle,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        )
      ],
    );
  }
}