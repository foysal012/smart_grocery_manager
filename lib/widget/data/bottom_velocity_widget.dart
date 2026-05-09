import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomVelocityWidget extends StatelessWidget {
  const BottomVelocityWidget({
    super.key,
    required this.title,
    required this.value
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff9E4300),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Gap(10.0),

            Text(title,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),

        Text(value,
          style: TextStyle(
              fontSize: 14,
              color: Color(0xffBA1A1A),
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}