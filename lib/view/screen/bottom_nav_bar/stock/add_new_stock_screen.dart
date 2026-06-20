import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../widget/custom_text_from_field.dart';

class AddNewStockScreen extends StatefulWidget {
  const AddNewStockScreen({super.key});

  @override
  State<AddNewStockScreen> createState() => _AddNewStockScreenState();
}

class _AddNewStockScreenState extends State<AddNewStockScreen> {

  final productNameText = TextEditingController();
  final qtyText = TextEditingController();
  final buyingPriceText = TextEditingController();
  final sellingPriceText = TextEditingController();
  final expiryDateText = TextEditingController();

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
              
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Color(0xff005BBF),
                          ),
                        ),
                        Gap(8.0),

                        Text('Product Identity',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Gap(20.0),

                    Text('Product Name',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Gap(5.0),
                    
                    CustomTextFromField(
                        productNameText: productNameText,
                        hintText: 'e.g. Premium Industrial Hub',
                    ),
                    Gap(10.0),

                    Text('Quantity',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Gap(5.0),

                    CustomTextFromField(
                      productNameText: qtyText,
                      hintText: '000',
                      suffixWidget: Text('UNITS',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff727785),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Gap(20.0),

                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Color(0xff9E4300),
                          ),
                        ),
                        Gap(8.0),

                        Text('Financial Parameters',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Gap(20.0),

                    Text('Buying Price',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Gap(5.0),

                    CustomTextFromField(
                      productNameText: buyingPriceText,
                      hintText: '0.00',
                      prefixWidget: Icon(Icons.attach_money_outlined, color: Color(0xff005BBF)),
                    ),
                    Gap(10.0),

                    Text('selling Price',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Gap(5.0),

                    CustomTextFromField(
                      productNameText: sellingPriceText,
                      hintText: '0.00',
                      prefixWidget: Icon(Icons.attach_money_outlined, color: Colors.green),
                    ),
                    Gap(20.0),

                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.green,
                          ),
                        ),
                        Gap(8.0),

                        Text('Compliance & Lifecycle',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Gap(20.0),

                    Text('Expiry Date',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Gap(5.0),

                    CustomTextFromField(
                      productNameText: buyingPriceText,
                      hintText: 'mm/dd/yyyy',
                      suffixWidget: Icon(Icons.calendar_month_outlined, color: Color(0xff727785)),
                    ),
                    Gap(40.0),

                    Container(
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Color(0xff005BBF)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Save Stock',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Gap(10.0),

                          Icon(Icons.send, color: Colors.white,)
                        ],
                      ),
                    ),
                    Gap(20.0)
                  ],
                ),
              ),
              Gap(20.0),

              Container(
                height: 240,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xff86F898).withValues(alpha: 0.30)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green
                            ),
                            child: Icon(Icons.done_outline, color: Colors.white)
                        ),
                        Gap(10.0),

                        Text('Return Success',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff065A0A),
                              fontWeight: FontWeight.bold
                          ),
                        )                      ],
                    ),
                    Gap(10.0),

                    Container(
                      height: 120,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ENTRY CONFIRMED',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff065A0A),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Gap(10.0),
                          
                          Text('Precision Hex Bolt X12',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Gap(15.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF2F3FD),
                                    borderRadius: BorderRadius.all(Radius.circular(4.0))
                                  ),
                                  child: Text('Qty: 500',
                                    style: TextStyle(
                                      color: Color(0xff414754)
                                    ),
                                  )),
                              
                              Text('Id: #99281 PL')
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(15.0),

                    Text('Successfully published to regional node',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff065A0A),
                          fontWeight: FontWeight.bold
                      ),
                    )

                  ],
                ),
              ),
              Gap(20.0)

            ],
          ),
        ),
      ),
    );
  }
}
