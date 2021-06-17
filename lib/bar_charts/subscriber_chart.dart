import 'package:flutter/material.dart';
import 'package:playground/bar_charts/subscribers_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SubscribersChart extends StatelessWidget {
  final List<SubscribersSeries> data;

  SubscribersChart({this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscribersSeries,String >> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
          domainFn: (SubscribersSeries sub, _) =>sub.year,
        measureFn: (SubscribersSeries sub, _) => sub.numberOfSubscribers,
        colorFn:  (SubscribersSeries sub, _) => sub.color,
      )
    ];
    return charts.BarChart(series,animate: true,);
  }
}
