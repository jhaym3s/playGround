import 'package:charts_flutter/flutter.dart' as charts;
class SubscribersSeries{

  final String year;
  final int numberOfSubscribers;
  final charts.Color color;

    SubscribersSeries({
      this.numberOfSubscribers,
      this.year,
      this.color
    });
}