import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xffE3EBF9)
        ),
        child: Column(
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


          ],
        ),
      ),
    );
  }
}
