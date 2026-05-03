import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DataVisualizationScreen extends StatefulWidget {
  const DataVisualizationScreen({super.key});

  @override
  State<DataVisualizationScreen> createState() => _DataVisualizationScreenState();
}

class _DataVisualizationScreenState extends State<DataVisualizationScreen> {
  
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState(){
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  final List<ChartData> chartData = [
    ChartData(2, 8),
    ChartData(4, 4),
    ChartData(6, 6),
    ChartData(8, 4),
    ChartData(10, 8),
    ChartData(12, 10),
    ChartData(14, 6),
  ];

  final List<ChartData1> chartData1 = [
    ChartData1('David', 25),
    ChartData1('Steve', 38),
    ChartData1('Jack', 34),
    ChartData1('Others', 52)
  ];

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
          
              Text('Analytics\nDashboard',
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xff191C23),
                  fontWeight: FontWeight.bold
                ),
              ),
              Gap(8.0),
          
              Text('Deep insights into your inventory and\nfinancial performance.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff414754),
                  fontWeight: FontWeight.normal
                ),
              ),
              Gap(20.0),
          
              Container(
                  child: SfCartesianChart(
                      series: <CartesianSeries>[
                        AreaSeries<ChartData, double>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          borderWidth: 4,
                          borderGradient: const LinearGradient(
                              colors: <Color>[
                                Color.fromRGBO(230, 0, 180, 1),
                                Color.fromRGBO(255, 200, 0, 1)
                              ],
                              stops: <double>[
                                0.2,
                                0.9
                              ]
                          ),
                        )
                      ]
                  )
              ),
              Gap(20.0),
          
              Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    title: ChartTitle(text: 'Half yearly sales analysis'),
                    legend: Legend(isVisible: true),
                    tooltipBehavior: _tooltipBehavior,

                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          dataSource:  <SalesData>[
                            SalesData('Jan', 35),
                            SalesData('Mar', 28),
                            SalesData('May', 37),
                            SalesData('Jul', 30),
                            SalesData('Sep', 39),
                            SalesData('Nov', 26),
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales,
                          dataLabelSettings: DataLabelSettings(isVisible: true)
                      )
                    ]
                )
              ),
              Gap(20.0),

              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10.0),

                    Text("Profit Distribution",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),

                    Container(
                        child: SfCircularChart(
                            annotations: [
                            CircularChartAnnotation(
                                widget: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Total',
                                            style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 20)),
                                        const Text('\$24.8k',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold
                                            ))
                                      ],
                                    ))),
                            ],
                            series: <CircularSeries>[
                              DoughnutSeries<ChartData1, String>(
                                  dataSource: chartData1,
                                  xValueMapper: (ChartData1 data, _) => data.x,
                                  yValueMapper: (ChartData1 data, _) => data.y,
                                  innerRadius: '80%',
                                  explodeAll: true
                              ),
                            ]
                        )
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow
                              ),
                            ),
                            Gap(10.0),

                            Text('Electronics',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),

                        Text('40%',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff1D50D6)
                              ),
                            ),
                            Gap(10.0),

                            Text('Apparel',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),

                        Text('30%',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff3A5863)
                              ),
                            ),
                            Gap(10.0),

                            Text('Accessories',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),

                        Text('20%',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Color(0xff5EB2F4)
                                color: Colors.blue
                              ),
                            ),
                            Gap(10.0),

                            Text('Equipment',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),

                        Text('10%',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Gap(10.0)
                  ],
                ),
              ),
              Gap(24.0),
              
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0xffF2F3FD),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  border: Border(
                    left: BorderSide(
                      width: 5.0,
                      color: Color(0xff9E4300)
                    )
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.hourglass_bottom, size: 25.0, color: Color(0xff9E4300)),
                        Gap(10.0),

                        Text('Expiry Alerts',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Gap(10.0),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Organic Almond Milk',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Color(0x33c55500)
                            ),
                            child: Text('Exp: 7 Days',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9E4300)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(12.0),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Greek Yogurt Pack',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Color(0x33c55500)
                            ),
                            child: Text('Exp: 12 Days',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9E4300)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Gap(10.0)
                  ],
                ),
              ),
              Gap(24.0),

              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xffF2F3FD),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    border: Border(
                        left: BorderSide(
                            width: 5.0,
                            color: Color(0xff9E4300)
                        )
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.warning_amber, size: 25.0, color: Color(0xff9E4300)),
                        Gap(10.0),

                        Text('Low Stock(<10)',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        )
                      ],
                    ),
                    Gap(10.0),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Silk Protein Powder',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),
                          ),

                          Text('3 units',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9E4300)
                            ),
                          ),

                          Text('REORDER',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(12.0),

                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Matte Phone Case',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                            ),
                          ),

                          Text('8 units',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9E4300)
                            ),
                          ),

                          Text('REORDER',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(10.0)
                  ],
                ),
              ),
              Gap(24.0),

              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top 5 Best Sellers',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        Icon(Icons.moving, color: Colors.green, size: 30)
                      ],
                    ),
                    Gap(10.0),

                    TopBestSellersWidget(
                      title1: 'Wireless Headphones Pro',
                      title2: '1240 sold',
                      value: 9,
                    ),
                    Gap(10.0),

                    TopBestSellersWidget(
                      title1: 'Smart Fitness Watch',
                      title2: '982 sold',
                      value: 7.8,
                    ),
                    Gap(10.0),

                    TopBestSellersWidget(
                      title1: 'Ergonomic Mouse',
                      title2: '764 sold',
                      value: 6.3,
                    ),
                    Gap(10.0),

                    TopBestSellersWidget(
                      title1: 'Mechanical Keyboard',
                      title2: '612 sold',
                      value: 4.9,
                    ),
                    Gap(10.0),

                    TopBestSellersWidget(
                      title1: 'Laptop Cooling Pad',
                      title2: '450 sold',
                      value: 3.1,
                    ),
                    Gap(10.0)
                  ]
                )
              ),
              Gap(24.0),

              Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(10.0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bottom 5 Velocity',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                            Icon(Icons.trending_down_sharp, color: Color(0xff9E4300), size: 30)
                          ],
                        ),
                        Gap(10.0),

                        BottomVelocityWidget(
                          title: 'Vintage Desk Clock',
                          value: '2 sold / mo',
                        ),
                        Gap(10.0),

                        BottomVelocityWidget(
                          title: 'Legacy Server Cables',
                          value: '5 sold / mo',
                        ),
                        Gap(10.0),

                        BottomVelocityWidget(
                          title: 'Protective Laptop Film',
                          value: '8 sold / mo',
                        ),
                        Gap(10.0),

                        BottomVelocityWidget(
                          title: 'XLR Audio Cable',
                          value: '12 sold / mo',
                        ),
                        Gap(10.0),

                        BottomVelocityWidget(
                          title: 'Generic Stylus Pen',
                          value: '15 sold / mo',
                        ),
                        Gap(10.0)
                      ]
                  )
              ),
              Gap(24.0),

              Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(10.0),

                        Text('Total Profit Breakdown',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        Gap(5.0),

                        Text('Margin analysis by product\ncategory',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38
                          ),
                        ),
                        Gap(10.0),

                        Align(
                          alignment: AlignmentGeometry.centerEnd,
                          child: Text('\$84321.00',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.green
                            ),
                          ),
                        ),
                        Gap(5.0),

                        Align(
                          alignment: AlignmentGeometry.centerEnd,
                          child: Text('12.5% vs Last Month',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[500]
                            ),
                          ),
                        ),
                        Gap(10.0),

                        ProfitBreakdownWidget(
                          title: 'ELECTRONICS',
                          value: '\$42100',
                          sliderValue: 9.0,
                          sliderClr: Colors.blue,
                        ),

                        ProfitBreakdownWidget(
                          title: 'FURNITURE',
                          value: '\$18450',
                          sliderValue: 7.4,
                          sliderClr: Colors.green,
                        ),
                        Gap(10.0),

                        ProfitBreakdownWidget(
                          title: 'SERVICES',
                          value: '\$12900',
                          sliderValue: 5.1,
                          sliderClr: Color(0XFF9E4300),
                        ),
                        Gap(10.0),

                        ProfitBreakdownWidget(
                          title: 'OTHER',
                          value: '\$10871',
                          sliderValue: 3.2,
                          sliderClr: Color(0xff727785),
                        ),
                        Gap(10.0)
                      ]
                  )
              ),
              Gap(24.0),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfitBreakdownWidget extends StatelessWidget {
  const ProfitBreakdownWidget({
    super.key, required this.title, required this.value, required this.sliderValue ,required this.sliderClr
  });

  final String title;
  final String value;
  final double sliderValue;
  final Color sliderClr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(0xffF2F3FD),
        borderRadius: BorderRadius.all(Radius.circular(15.0))
      ),
      child: Column(
        children: [
          Text(title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black38
            ),
          ),
          Gap(5.0),

          Text(value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          Gap(5.0),

          Slider(
            min: 0,
            max: 10,
            value: sliderValue,
            padding: EdgeInsets.all(0),
            onChanged: (value) {},
            activeColor: sliderClr,
          ),
        ],
      ),
    );
  }
}

class BottomVelocityWidget extends StatelessWidget {
  const BottomVelocityWidget({
    super.key,
    required this.title,
    required this.value
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff9E4300),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Gap(10.0),

            Text(title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),

        Text(value,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xffBA1A1A),
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}

class TopBestSellersWidget extends StatelessWidget {
  const TopBestSellersWidget({
    super.key,
    required this.title1, required this.title2, required this.value
  });

  final String title1;
  final String title2;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title1,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            Text(title2,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38
              ),
            )
          ],
        ),
        Gap(5.0),

        Slider(
            min: 0,
            max: 10,
            value: value,
            padding: EdgeInsets.all(0),
            // thumbColor: Colors.transparent,
            onChanged: (value) {

            },
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final double x;
  final double? y;
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class ChartData1 {
  ChartData1(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}