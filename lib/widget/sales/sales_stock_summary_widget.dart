import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SalesStockSummaryWidget extends StatelessWidget {
  const SalesStockSummaryWidget({
    super.key, required this.title, required this.price, required this.subTitle, required this.quantity, required this.quantityClr
  });

  final String title;
  final String price;
  final String subTitle;
  final String quantity;
  final Color quantityClr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
      decoration: BoxDecoration(
          color: Color(0xffF2F3FD),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border(
              left: BorderSide(
                  width: 5.0,
                  color: quantityClr
              )
          )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              Text('\$$price',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                ),
              )
            ],
          ),
          Gap(10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(subTitle,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black45
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: quantityClr
                ),
                child: Text(quantity,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
