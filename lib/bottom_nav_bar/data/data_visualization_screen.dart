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
                  child: SfCircularChart(
                      series: <CircularSeries>[
                        // Render pie chart
                        PieSeries<ChartData1, String>(
                            dataSource: chartData1,
                            pointColorMapper:(ChartData1 data, _) => data.color,
                            xValueMapper: (ChartData1 data, _) => data.x,
                            yValueMapper: (ChartData1 data, _) => data.y
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