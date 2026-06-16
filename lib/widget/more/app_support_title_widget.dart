import 'package:flutter/material.dart';

class AppSupportTileWidget extends StatelessWidget {
  const AppSupportTileWidget({
    super.key,
    required this.title,
    required this.iconData
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black38
          ),
        ),

        Icon(iconData),
      ],
    );
  }
}