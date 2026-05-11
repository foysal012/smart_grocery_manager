import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../widget/sales/sales_stock_summary_widget.dart';

class SalesHistoryScreen extends StatefulWidget {
  const SalesHistoryScreen({super.key});

  @override
  State<SalesHistoryScreen> createState() => _SalesHistoryScreenState();
}

class _SalesHistoryScreenState extends State<SalesHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Color(0xffECEDF7)
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(40.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: Color(0xff005BBF)
                              ),
                              image: DecorationImage(image: AssetImage('assets/images/grocery_cart_light.png'))
                          ),
                        ),
                        Gap(10.0),

                        Text('Smart Grocery Manager',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xff1A73E8),
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),

                    Icon(Icons.notifications, size: 25.0)
                  ],
                ),
                Gap(16.0),

                Text('NEW TRANSACTION',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff414754),
                      fontWeight: FontWeight.normal
                  ),
                ),
                Gap(8.0),

                Row(
                  children: [
                    Text('Sales Chalan',
                      style: TextStyle(
                          fontSize: 36,
                          color: Color(0xff191C23),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Gap(5.0),

                    Text('#7742',
                      style: TextStyle(
                          fontSize: 36,
                          color: Color(0xff60636a),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Gap(20.0),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xffF2F3FD)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('DATE',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Gap(5.0),

                            Text('Filter',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(10.0),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xffF2F3FD)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('TERMINAL',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Gap(5.0),

                            Text('South Wing 02',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(20.0),

                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search),
                      Gap(10.0),

                      Text('Search product name, SKU, or\nbatch ID...',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff414754),
                            fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  ),
                ),
                Gap(20.0),

                SalesStockSummaryWidget(
                  title: 'Steel Girder H1',
                  price: '450.00',
                  subTitle: 'SKU-SG-990-2',
                  quantity: '42 IN STOCK',
                  quantityClr: Colors.green,
                ),
                Gap(20.0),

                SalesStockSummaryWidget(
                  title: 'Industrial Rivets',
                  price: '12.50',
                  subTitle: 'SKU-IR-042-X',
                  quantity: '1.2K IN STOCK',
                  quantityClr: Colors.green,
                ),
                Gap(20.0),

                SalesStockSummaryWidget(
                  title: 'Hydraulic Fluid',
                  price: '89.0',
                  subTitle: 'SKU-HF-90-GL',
                  quantity: 'Low Stock(5)',
                  quantityClr: Color(0xffC55500),
                ),
                Gap(20.0),

                SalesStockSummaryWidget(
                  title: 'Welding Rods',
                  price: '5.25',
                  subTitle: 'SKU-WR-BK-50',
                  quantity: '240 IN STOCK',
                  quantityClr: Colors.green,
                ),
                Gap(40.0),

              ],
            ),
          ),
        )
    );
  }
}
