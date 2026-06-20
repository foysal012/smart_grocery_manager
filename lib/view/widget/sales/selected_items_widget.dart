import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SelectedItemsWidget extends StatelessWidget {
  const SelectedItemsWidget({
    super.key,required this.productName, required this.productType, required this.productColor,
    required this.productSize, required this.productPrice, required this.productQty
  });
  final String productName;
  final String productType;
  final String productColor;
  final String productSize;
  final String productPrice;
  final String productQty;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))
      ),
      child: Row(
        children: [
          Expanded(
            flex:1,
            child: Container(
              height:90,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          ),
          Gap(10.0),

          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(productType,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black38,
                            fontWeight: FontWeight.w500
                        )
                    ),

                    Text('Color: $productColor',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black38,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ],
                ),

                Text('Size: $productSize',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black38,
                        fontWeight: FontWeight.w500
                    )
                ),
                Gap(10.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$$productPrice',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )
                    ),

                    Row(
                      children: [
                        Icon(Icons.remove_circle, color: Colors.red),
                        Gap(2.5),

                        Text(productQty,
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        Gap(2.5),

                        Icon(Icons.add_circle, color: Colors.green)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}