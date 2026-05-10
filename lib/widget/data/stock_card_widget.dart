import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StockCardWidget extends StatelessWidget {
  const StockCardWidget({super.key, required this.title, required this.subTitle, required this.quantity, required this.days, required this.borderClr, required this.sliderClr, required this.sliderValue});
  final String title;
  final String subTitle;
  final String quantity;
  final String days;
  final Color borderClr;
  final Color sliderClr;
  final double sliderValue;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border(
              left: BorderSide(
                color: borderClr,
                width: 5.0,
              )
          )
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.pink
                ),
              ),
              Gap(10.0),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  Text(subTitle,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(16.0),

          Column(
            children: [
              Text(quantity,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('UNITS LEFT',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Gap(16.0),

          Row(
            children: [
              Container(
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: sliderClr
                ),
              ),
              Gap(10.0),

              Text('Caution: $days Days Left',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: sliderClr
                ),
              )
            ],
          ),
          Gap(5.0),

          Slider(
            padding: EdgeInsets.zero,
            max: 100,
            min: 0,
            value: sliderValue,
            onChanged: (value) {

            },
            activeColor: sliderClr,
            thumbColor: Colors.transparent,
          ),
          Gap(10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.edit),
              Gap(10.0),

              Icon(Icons.more_vert),
            ],
          ),

        ],
      ),
    );
  }
}