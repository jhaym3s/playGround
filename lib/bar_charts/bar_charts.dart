import 'package:flutter/material.dart';
import 'package:playground/bar_charts/subscriber_chart.dart';
import 'package:playground/bar_charts/subscribers_series.dart';
import 'package:charts_flutter/flutter.dart'as chart;

class BarCharts extends StatelessWidget {

  final List<SubscribersSeries> data = [
    SubscribersSeries(
      color: chart.ColorUtil.fromDartColor(Colors.blue),
      numberOfSubscribers: 16,
      year: "2014",
    ),SubscribersSeries(
        color: chart.ColorUtil.fromDartColor(Colors.orange),
      numberOfSubscribers: 12,
      year: "2013",
    ),SubscribersSeries(
        color: chart.ColorUtil.fromDartColor(Colors.red),
      numberOfSubscribers: 18,
      year: "2012",
    ),SubscribersSeries(
        color: chart.ColorUtil.fromDartColor(Colors.purple),
      numberOfSubscribers: 1,
      year: "2015",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SubscribersChart(data: data),
          ),
        ),
    );
  }
}
