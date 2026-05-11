import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widget/data/stock_card_widget.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
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

              Text('Stock Overview',
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff191C23),
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(8.0),

              Text('Maintain optimal stock levels with real-\ntime expiration tracking and intelligent\nquantity alerts.',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff414754),
                    fontWeight: FontWeight.normal
                ),
              ),
              Gap(20.0),
              
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.filter_list),
                        Gap(10.0),

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
                  Gap(10.0),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Color(0xff005BBF)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        Gap(10.0),

                        Text('New Entry',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Gap(40.0),

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
              Gap(10.0),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                decoration: BoxDecoration(
                  color: Color(0xffF2F3FD),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff86F898)
                      ),
                      child: Icon(Icons.note_alt_outlined),
                    ),
                    Gap(10.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Active SKUs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45
                          ),
                        ),
                        Text('1284',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Gap(40.0),
              
              StockCardWidget(
                title: 'Luminal Chrono-Series X',
                subTitle: 'SKU: LMN-293-X * Batch:\nB2026-04',
                quantity: '42',
                days: '4',
                sliderValue: 18,
                borderClr: Color(0xffBA1A1A),
                sliderClr: Color(0xffBA1A1A)
              ),
              Gap(16.0),

              StockCardWidget(
                  title: 'Veda Organics Serum',
                  subTitle: 'SKU: VDA-901-S * Batch:\nB2026-08',
                  quantity: '118',
                  days: '12',
                  sliderValue: 39,
                  borderClr: Color(0xff9E4300),
                  sliderClr: Color(0xff9E4300)
              ),
              Gap(16.0),

              StockCardWidget(
                  title: 'Stellar Runner 4.0',
                  subTitle: 'SKU: STR-552-R * Batch:\nB2026-11',
                  quantity: '602',
                  days: '144',
                  sliderValue: 77,
                  borderClr: Color(0xff006E2C),
                  sliderClr: Color(0xff006E2C)
              ),
              Gap(16.0),

              StockCardWidget(
                  title: 'Aurora Condenser Mic',
                  subTitle: 'SKU: AUR-112-M * Batch:\nB2026-09',
                  quantity: '24',
                  days: '82',
                  sliderValue: 52,
                  borderClr: Color(0xff006E2C),
                  sliderClr: Color(0xff006E2C)
              ),
              Gap(16.0),
            ],
          ),
        ),
      )
    );
  }
}
