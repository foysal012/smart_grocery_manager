import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../widget/more/app_support_title_widget.dart';
import '../../widget/more/notification_preference_widget.dart';
import '../../widget/more/warehouse_location_widget.dart';

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
                
                WarehouseLocationWidget(
                  title: 'Central Oub A1',
                  subTitle: '122 Industrial Lf ay, NJ',
                  tag: 'Primary',
                  tagColor: Colors.greenAccent,
                  sideColor: Colors.green
                ),
                Gap(10.0),

                WarehouseLocationWidget(
                    title: 'Lf est Coast Annex',
                    subTitle: '889 Logistic Drive, CA',
                    tag: 'Secondary',
                    tagColor: Colors.black38,
                    sideColor: Colors.black38
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

                      NotificationPreferenceWidget(
                        iconData: Icons.warning,
                        title: 'Low Stock Alerts',
                        subTitle: 'Notify when items fall below\nsafety threshold.',
                        isTrue: true,
                        isTrueFunction: (value) {}
                      ),
                      Gap(10.0),

                      NotificationPreferenceWidget(
                          iconData: Icons.close_outlined,
                          title: 'Expiry u Ernings',
                          subTitle: 'After 30 days before product\nexpiration.',
                          isTrue: false,
                          isTrueFunction: (value) {}
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

                      AppSupportTileWidget(
                        title: 'Knowledge Base',
                        iconData: Icons.link
                      ),
                      Gap(5.0),

                      AppSupportTileWidget(
                          title: 'Submit a Ticket',
                          iconData: Icons.email
                      ),
                      Gap(5.0),

                      AppSupportTileWidget(
                          title: 'Developer API',
                          iconData: Icons.library_add_check
                      ),
                      Gap(5.0)
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
                      Icon(Icons.logout, color: Color(0xff93000A)),
                      Gap(10.0),

                      Text('Logout from Session',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff93000A)
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
