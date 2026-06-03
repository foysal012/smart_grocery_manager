import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();

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

                Text('Profile Settings',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff191C23),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Gap(10.0),

                Text('Manage your personal administrative identity and\ncredentials',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff60636a),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Gap(20.0),

                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('FULL NAME',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff414754),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Gap(5.0),

                      TextFormField(
                        controller: nameTextController,
                        decoration: InputDecoration(
                          fillColor: Color(0xffc5c7d1),
                          filled: true,
                          hintText: "Foysal Joarder",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none
                          ),
                        ),
                      ),
                      Gap(10.0),

                      Text('ADMIN EMAIL',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff414754),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Gap(5.0),

                      TextFormField(
                        controller: nameTextController,
                        decoration: InputDecoration(
                          fillColor: Color(0xffc5c7d1),
                          filled: true,
                          hintText: "foysal876@gmail.com",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide.none
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide.none
                          ),
                        ),
                      ),
                      Gap(20.0),

                      Container(
                        height: 50,
                        width: 160,
                        alignment: AlignmentGeometry.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Text('Update Profile',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Gap(10.0),

                    ],
                  ),
                ),
                Gap(20.0),

                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffF2F3FD)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.shopping_cart_outlined, color: Color(0xff005BBF)),
                          Gap(10.0),

                          Text('Selected Items',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              )
                          )
                        ],
                      ),
                      Gap(10.0),

                      Divider(
                          indent: 10.0,
                          endIndent: 10.0,
                          height: 1.0,
                          color: Colors.black38
                      ),
                      Gap(20.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500
                              )
                          ),

                          Text('\$1950',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              )
                          )
                        ],
                      ),
                      Gap(10.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tax (VAT 5%)",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500
                              )
                          ),

                          Text('\$348.15',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              )
                          )
                        ],
                      ),
                      Gap(20.0),

                      Container(
                        height: 160,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Save as\nDraft',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.print, color: Colors.black38),
                                    Gap(20.0),

                                    Text('Print\nPreview',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold
                                        )
                                    )
                                  ],
                                )
                              ],
                            ),
                            Gap(10.0),

                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              alignment: AlignmentGeometry.center,
                              child: Text('Finalize Sale',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white
                                  )
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
