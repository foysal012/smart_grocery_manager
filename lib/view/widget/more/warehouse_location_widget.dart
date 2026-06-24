import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WarehouseLocationWidget extends StatelessWidget {
  const WarehouseLocationWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.tag,
    required this.tagColor,
    required this.sideColor
  });

  final String title;
  final String subTitle;
  final String tag;
  final Color tagColor;
  final Color sideColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border(
          left: BorderSide(
              color: sideColor,
              width: 5
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              Icon(Icons.settings_applications_sharp, color: Colors.black38)
            ],
          ),
          Gap(5.0),

          Text(subTitle,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black38
            ),
          ),
          Gap(5.0),

          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: tagColor,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Text(tag),
          )
        ],
      ),
    );
  }
}