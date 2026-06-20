import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfitBreakdownWidget extends StatelessWidget {
  const ProfitBreakdownWidget({
    super.key, required this.title, required this.value, required this.sliderValue ,required this.sliderClr
  });

  final String title;
  final String value;
  final double sliderValue;
  final Color sliderClr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color(0xffF2F3FD),
          borderRadius: BorderRadius.all(Radius.circular(15.0))
      ),
      child: Column(
        children: [
          Text(title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black38
            ),
          ),
          Gap(5.0),

          Text(value,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Gap(5.0),

          Slider(
            min: 0,
            max: 10,
            value: sliderValue,
            padding: EdgeInsets.all(0),
            onChanged: (value) {},
            activeColor: sliderClr,
          ),
        ],
      ),
    );
  }
}