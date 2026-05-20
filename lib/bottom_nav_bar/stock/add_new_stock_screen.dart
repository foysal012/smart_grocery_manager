import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddNewStockScreen extends StatefulWidget {
  const AddNewStockScreen({super.key});

  @override
  State<AddNewStockScreen> createState() => _AddNewStockScreenState();
}

class _AddNewStockScreenState extends State<AddNewStockScreen> {
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

              Text('WAREHOUSE CONTROL',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff005BBF),
                    fontWeight: FontWeight.bold
                ),
              ),

              Text('New Stock Entry',
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff191C23),
                    fontWeight: FontWeight.bold
                ),
              ),
              Gap(8.0),

              Text('Update your inventory architecture with\nprecision. Ensure all fisical and expiry\nparameters are verified before commiting to\nthe ledger.',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff414754),
                    fontWeight: FontWeight.normal
                ),
              ),
              Gap(20.0),

              Container(
                width: MediaQuery.sizeOf(context).width * 0.60,
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                decoration: BoxDecoration(
                  color: Color(0xffF2F3FD),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff86F898)
                      ),
                      child: Icon(Icons.elevator_sharp),
                    ),
                    Gap(10.0),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DAILY CAPACITY',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black45
                          ),
                        ),
                        Text('84.2%',
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

            ],
          ),
        ),
      ),
    );
  }
}
