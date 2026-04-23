import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int? touchedGroupIndex;

  BarTouchData get barTouchData => BarTouchData(
      enabled: true,
      handleBuiltInTouches: false,
      touchCallback: (event, response) {
        setState(() {
          final groupI = response?.spot?.touchedBarGroupIndex;
          if (event.isInterestedForInteractions && groupI != null) {
            touchedGroupIndex = groupI;
          } else {
            touchedGroupIndex = null;
          }
        });
      });

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = switch (value.toInt()) {
      0 => 'Mn',
      1 => 'Te',
      2 => 'Wd',
      3 => 'Tu',
      4 => 'Fr',
      5 => 'St',
      6 => 'Sn',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    rightTitles: const AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
  );

  FlBorderData get borderData => FlBorderData(
    show: false,
  );

  LinearGradient get _barsGradient => LinearGradient(
    colors: [
      Colors.blue.withValues(alpha: 0.2),
      Colors.cyan,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  List<BarChartGroupData> get barGroups =>
      [8, 10, 14, 15, 13, 10, 16].asMap().entries.map((entry) {
        int i = entry.key;
        int value = entry.value;
        final isTouched = i == touchedGroupIndex;
        return BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: value.toDouble(),
              gradient: _barsGradient,
              label: BarChartRodLabel(
                text: value.toString(),
                style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: isTouched ? 40 : 18,
                ),
              ),
            ),
          ],
        );
      }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xffE3EBF9)
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
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

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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

                      Text('QUICK COMMANDS',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff414754),
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Gap(12.0),

                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                            itemCount: 6,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.only(right: 10.0),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                // color: index == 0? Color(0xff005BBF) : Color(0xffE6E8F2)
                                color: Color(0xff005BBF)
                              ),
                            ),
                        ),
                      ),
                      Gap(24.0),

                      Container(
                        height: 300,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffF2F3FD),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Recent Activity',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff191C23),
                                        fontWeight: FontWeight.bold
                                    )
                                ),

                                Text('View All',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff005BBF),
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                              ],
                            ),
                            Gap(16.0),

                            Expanded(
                              child: ListView.builder(
                                physics: AlwaysScrollableScrollPhysics(),
                                itemCount: 6,
                                // shrinkWrap: true,
                                itemBuilder: (context, index) => Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: ListTile(
                                      leading: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.purple
                                        ),
                                      ),

                                      title: Text('Sale#849201',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      subtitle: Text('2 mins ago . 3 items',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
              ),
              Gap(24.0),

              AspectRatio(
                aspectRatio: 1.6,
                child: BarChart(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.easeOutQuad,
                  BarChartData(
                    barTouchData: barTouchData,
                    titlesData: titlesData,
                    borderData: borderData,
                    barGroups: barGroups,
                    gridData: const FlGridData(show: false),
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                  ),
                ),
              ),
              Gap(50.0),

            ],
          ),
        ),
      ),
    );
  }
}