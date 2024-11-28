import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  List<_SalesData> data1 = [
    _SalesData('Jan', 20),
    _SalesData('Feb', 25),
    _SalesData('Mar', 30),
    _SalesData('Apr', 32),
    _SalesData('May', 18)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_outlined))),
      body: SingleChildScrollView(
        child: Align(
          // alignment: Alignment.center,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 155,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                    // border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Hurdles Avoided',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 30,
                          width: 80,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            // border: Border.all(color: Colors.black)
                          ),
                          child: const Text(
                            '79',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 155,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                    // border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Distance Travelled',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 30,
                          width: 80,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            // border: Border.all(color: Colors.black)
                          ),
                          child: const Text(
                            '12 KM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 155,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                    // border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Parcel Delivered',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 30,
                          width: 80,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            // border: Border.all(color: Colors.black)
                          ),
                          child: const Text(
                            '123',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 155,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100],
                    // border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Errors   Occured',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 30,
                          width: 80,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            // border: Border.all(color: Colors.black)
                          ),
                          child: const Text(
                            '06',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 220,
              width: 300,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(
                    text: 'Hudle Avoided - Months',
                    textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                // Enable legend
                legend: const Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                  ColumnSeries<_SalesData, String>(
                    color: Colors.blue[100],
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    isVisibleInLegend: false,
                    // name: 'No of Hurdles',
                    // Enable data label
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                    animationDuration: 1000
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 220,
              width: 300,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(
                    text: 'Distance Travelled - Months',
                    textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                // Enable legend
                legend: const Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                  ColumnSeries<_SalesData, String>(
                    color: Colors.blue[100],
                    dataSource: data1,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    isVisibleInLegend: false,
                    // name: 'No of Hurdles',
                    // Enable data label
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                    animationDuration: 1000,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
