import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TopBestSellersWidget extends StatelessWidget {
  const TopBestSellersWidget({
    super.key,
    required this.title1, required this.title2, required this.value
  });

  final String title1;
  final String title2;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title1,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            Text(title2,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38
              ),
            )
          ],
        ),
        Gap(5.0),

        Slider(
          min: 0,
          max: 10,
          value: value,
          padding: EdgeInsets.all(0),
          // thumbColor: Colors.transparent,
          onChanged: (value) {

          },
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}