import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ReportVisualizationPage extends StatelessWidget {
  final List<double> heartRateValues;
  final DateTime timestamp;

  const ReportVisualizationPage({
    super.key,
    required this.heartRateValues,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Rate Data - ${timestamp.toString()}'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart(
          primaryXAxis: NumericAxis(title: AxisTitle(text: 'Data Points')),
          primaryYAxis: NumericAxis(title: AxisTitle(text: 'Heart Rate')),
          series: <CartesianSeries>[
            LineSeries<double, int>(
              dataSource: heartRateValues,
              xValueMapper: (value, index) => index,
              yValueMapper: (value, _) => value,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}
