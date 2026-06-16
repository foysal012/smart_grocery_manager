import 'package:flutter/material.dart';

class NotificationPreferenceWidget extends StatelessWidget {
  const NotificationPreferenceWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.isTrue,
    required this.isTrueFunction
  });

  final IconData iconData;
  final String title;
  final String subTitle;
  final bool isTrue;
  final void Function(bool) isTrueFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Icon(iconData, color: Colors.red,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              Text(subTitle,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38
                ),
              )
            ],
          ),
          Switch(value: isTrue, onChanged: isTrueFunction)
        ],
      ),
    );
  }
}