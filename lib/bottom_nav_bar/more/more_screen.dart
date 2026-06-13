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

                Text('Warehouse Locations',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                Gap(5.0),

                Row(
                  children: [
                    Text('Active nodes in your distribution network.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38
                      ),
                    ),
                    Gap(10.0),

                    Text('Add Oub',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1A73E8),
                      ),
                    ),
                  ],
                ),
                Gap(10.0),
                
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border(
                      left: BorderSide(
                        color: Colors.green,
                        width: 5
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Central Oub A1',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          
                          Icon(Icons.settings_applications_sharp, color: Colors.black38)
                        ],
                      ),
                      Gap(5.0),

                      Text('122 Industrial Lf ay, NJ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38
                        ),
                      ),
                      Gap(5.0),

                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Text('Primary'),
                      )
                    ],
                  ),
                ),
                Gap(10.0),

                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border(
                      left: BorderSide(
                          color: Colors.black38,
                          width: 5
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lf est Coast Annex',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),

                          Icon(Icons.settings_applications_sharp, color: Colors.black38)
                        ],
                      ),
                      Gap(5.0),

                      Text('889 Logistic Drive, CA',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38
                        ),
                      ),
                      Gap(5.0),

                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Text('Secondary'),
                      )
                    ],
                  ),
                ),
                Gap(15.0),

                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Notification Preferences',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      Gap(10.0),

                      Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: Colors.red.withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Icon(Icons.warning, color: Colors.red,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Low Stock Alerts',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                ),

                                Text('Notify when items fall below\nsafety threshold.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black38
                                  ),
                                )
                              ],
                            ),
                            Switch(value: true, onChanged: (value) {})
                          ],
                        ),
                      ),
                      Gap(10.0),

                      Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: Colors.red.withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                              child: Icon(Icons.close_outlined, color: Colors.red,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expiry u Ernings',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                ),

                                Text('After 30 days before product\nexpiration.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black38
                                  ),
                                )
                              ],
                            ),
                            Switch(value: true, onChanged: (value) {})
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Gap(15.0),

                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.help),
                          Gap(10.0),

                          Text('App Support',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),
                      Gap(5.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Knowledge Base',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38
                            ),
                          ),

                          Icon(Icons.link),
                        ],
                      ),

                      Gap(5.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Submit a Ticket',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38
                            ),
                          ),

                          Icon(Icons.email),
                        ],
                      ),
                      Gap(5.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Developer API',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38
                            ),
                          ),

                          Icon(Icons.library_add_check),
                        ],
                      ),


                    ],
                  ),
                ),
                Gap(15.0),

                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Precision Ledger v2.4.0',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      Gap(5.0),

                      Text('Stable Enterprise Build. Your data is encrypted with AES-256 and backed updaily at 02:00 UTC.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38
                        ),
                      )
                    ],
                  ),
                ),
                Gap(15.0),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  alignment: AlignmentGeometry.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      Gap(10.0),

                      Text('Logout from Session',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red
                          )
                      ),
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
