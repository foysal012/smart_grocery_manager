import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:smart_grocery_manager/model/transection_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<TransectionModel> transectionList = [
    TransectionModel(
      iconData: Symbols.add_shopping_cart,
      title: 'Sale #849201',
      subTitle: '2 mins ago * 3 Items',
      amount: -154.00
    ),
    TransectionModel(
        iconData: Symbols.mobile_check,
        title: 'Stock Update:Beverages',
        subTitle: '1 hour ago * Warehouse A',
        amount: 500.00
    ),
    TransectionModel(
        iconData: Symbols.assignment_return,
        title: 'Refund #849188',
        subTitle: '3 hours ago * Defective Item',
        amount: -22.50
    ),
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    ),
    TransectionModel(
        iconData: Symbols.mobile_check,
        title: 'Stock Update:Beverages',
        subTitle: '1 hour ago * Warehouse A',
        amount: 500.00
    ),
    TransectionModel(
        iconData: Symbols.assignment_return,
        title: 'Refund #849188',
        subTitle: '3 hours ago * Defective Item',
        amount: -22.50
    ),
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    ),
    TransectionModel(
        iconData: Symbols.mobile_check,
        title: 'Stock Update:Beverages',
        subTitle: '1 hour ago * Warehouse A',
        amount: 500.00
    ),
    TransectionModel(
        iconData: Symbols.assignment_return,
        title: 'Refund #849188',
        subTitle: '3 hours ago * Defective Item',
        amount: -22.50
    ),
    TransectionModel(
        iconData: Symbols.add_shopping_cart,
        title: 'Sale #849201',
        subTitle: '2 mins ago * 3 Items',
        amount: -154.00
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE3EBF9),
        scrolledUnderElevation: 0.0,
        leading: Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(2.5),
          margin: EdgeInsets.only(left: 10.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 2,
                  color: Color(0xff005BBF)
              ),
              image: DecorationImage(image: AssetImage('assets/images/grocery_cart_light.png'))
          ),
        ),

        title: Text('Smart Grocery Manager',
          style: TextStyle(
              fontSize: 20.0,
              color: Color(0xff1A73E8),
              fontWeight: FontWeight.bold
          ),
        ),

        actions: [
          Icon(Icons.notifications, size: 25.0),
          Gap(10.0)
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xffE3EBF9)
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(40.0),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       children: [
              //         // Container(
              //         //   height: 50,
              //         //   width: 50,
              //         //   padding: EdgeInsets.all(2.5),
              //         //   decoration: BoxDecoration(
              //         //     shape: BoxShape.circle,
              //         //     border: Border.all(
              //         //       width: 2,
              //         //       color: Color(0xff005BBF)
              //         //     ),
              //         //     image: DecorationImage(image: AssetImage('assets/images/grocery_cart_light.png'))
              //         //   ),
              //         // ),
              //         // Gap(10.0),
              //
              //         Text('Smart Grocery Manager',
              //           style: TextStyle(
              //             fontSize: 20.0,
              //             color: Color(0xff1A73E8),
              //             fontWeight: FontWeight.bold
              //           ),
              //         )
              //       ],
              //     ),
              //
              //     Icon(Icons.notifications, size: 25.0)
              //   ],
              // ),
              // Gap(16.0),

              Container(
                height: 170,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: AlignmentGeometry.topLeft,
                      end: AlignmentGeometry.bottomRight,
                      colors: [
                        Color(0xff005BBF),
                        Color(0xff1A73E8)
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TOTAL SALES (MONTH)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                          ),
                        ),
                        Icon(Symbols.trending_up, color: Colors.white, size: 25)
                      ],
                    ),
                    Gap(8.0),

                    Text('৳ 142850.00',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    Gap(8.0),

                    Container(
                      width: 165,
                      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white.withValues(alpha: 0.2)
                      ),
                      child: Row(
                        children: [
                          Icon(Symbols.arrow_upward_alt, color: Colors.white),
                          Gap(8.0),

                          Text('12% vs last month',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Gap(24.0),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        border: Border(
                          left: BorderSide(
                            width: 5.0,
                            color: Color(0xff006E2C)
                          )
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Symbols.payments, color: Color(0xff006E2C)),
                          Gap(8.0),

                          Text('Total Profit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff414754)
                            ),
                          ),
                          Spacer(),

                          Text('৳ 42300',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff191C23)
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Gap(16.0),

                  Expanded(
                    child: Container(
                      height: 160,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        // color: Color(0xffE6E8F2)
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff005BBF),
                              ),
                              child: Icon(Symbols.barcode_scanner, color: Colors.white)
                          ),
                          Gap(8.0),

                          Text('SCAN STOCK',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff005BBF)
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Gap(16.0),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Symbols.inventory_2, color: Color(0xff9E4300)),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  color: Color(0xffC55500)
                                ),
                                child: Text('12 ITEMS',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),
                                ),
                              )
                            ],
                          ),
                          Gap(8.0),

                          Text('Local Stock Alert',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff414754)
                            ),
                          ),
                          Spacer(),

                          Text('Premium Coffee',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff191C23)
                            ),
                          ),
                          Gap(4.0),

                          Text('Only 5 units left',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff9E4300)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(16.0),

                  Expanded(
                    child: Container(
                      height: 160,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Symbols.event_busy, color: Color(0xffBA1A1A)),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Color(0xffFFDAD6)
                                ),
                                child: Text('4 ITEMS',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff93000A)
                                  ),
                                ),
                              )
                            ],
                          ),
                          Gap(8.0),

                          Text('Expiry Alert',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff414754)
                            ),
                          ),
                          Spacer(),

                          Text('Organic Milk 1L',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff191C23)
                            ),
                          ),
                          Gap(4.0),

                          Text('Expires in 2 days',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff9E4300)
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Gap(24.0),

              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('QUICK COMMANDS',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff414754)
                      ),
                    ),
                    Gap(12.0),

                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            height: 48,
                            width: 150,
                            margin: EdgeInsets.only(right: 15.30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                color: index == 0 ? Color(0xff005BBF):Color(0xffE6E8F2)
                              // color: Color(0xff005BBF)
                            ),
                          )
                      ),
                    ),
                    Gap(10.0)
                  ]
                )
              ),
              Gap(36.0),

              Container(
                height: 250,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  color: Color(0xffF2F3FD)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recent Activity',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff191C23)
                          ),
                        ),
                        Text('View All',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff005BBF)
                          ),
                        )
                      ],
                    ),
                    Gap(16.0),

                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: transectionList.length,
                          scrollDirection: Axis.vertical,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final data = transectionList[index];
                            return ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    color: Color(0xffE0E2EC)
                                ),
                                child: Icon(data.iconData, color: data.amount > 0.0 ? Color(0xff005BBF) : Color(0xffBA1A1A)),
                              ),

                              title: Text('${data.title}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff191C23),
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              subtitle: Text('${data.subTitle}',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff414754),
                                      fontWeight: FontWeight.bold
                                  )
                              ),

                              trailing: Text('${data.amount}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: data.amount > 0.0 ? Color(0xff006E2C) : Color(0xffBA1A1A)
                                ),
                              ),
                            );
                          }
                      ),
                    )
                  ],
                ),
              ),
              Gap(24.0),

              AspectRatio(
                aspectRatio: 16 / 9,
                child: DChartBarO(
                  groupList: [
                    OrdinalGroup(
                      id: '1',
                      data: [
                        OrdinalData(domain: 'Mon', measure: 2),
                        OrdinalData(domain: 'Tue', measure: 6),
                        OrdinalData(domain: 'Wed', measure: 3),
                        OrdinalData(domain: 'Thu', measure: 4),
                        OrdinalData(domain: 'Fri', measure: 6),
                        OrdinalData(domain: 'Sat', measure: 3),
                        OrdinalData(domain: 'Sun', measure: 7),
                      ],
                    )
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
