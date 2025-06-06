import 'package:flutter/material.dart';
import 'package:turtle/vignettes/spending_tracker/lib/spending_income_expenses_header.dart';

import 'app_colors.dart';
import 'chart/chart.dart';
import 'demo_data.dart';
import 'interact_notification.dart';
import 'spending_app_bar.dart';
import 'spending_category_list.dart';
import 'spending_date_range.dart';
import 'spending_graph.dart';

class SpendingTrackerDemo extends StatefulWidget {
  @override
  _SpendingTrackerDemoState createState() => _SpendingTrackerDemoState();
}

class _SpendingTrackerDemoState extends State<SpendingTrackerDemo>
    with SingleTickerProviderStateMixin {
  static final _data = ChartData();
  late Chart _chart = Chart([_data.dataSet1, _data.dataSet2], '', '\$');
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 12000),
    upperBound: _chart.maxDomain,
  );

  @override
  void initState() {
    _chart.domainStart = 0;
    _chart.domainEnd = 13;
    _chart.rangeStart = 0;
    _chart.rangeEnd = 8;
    _chart.selectedDataPoint = 4;
    _chart.addListener(() => setState(() {}));

    _controller.addListener(() {
      final d = _controller.value - _chart.domainStart;
      if (d < 0) {
        _chart.domainStart += d;
        _chart.domainEnd += d;
      } else {
        _chart.domainEnd += d;
        _chart.domainStart += d;
      }
    });

    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: SpendingAppBar(),
      body: Container(
        color: AppColors.colorBg0,
        child: Column(
          children: [
            NotificationListener<InteractNotification>(
              onNotification: _handleInteract,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Top area with text fields and incom/expense summary
                    SpendingIncomeExpensesHeader(chart: _chart),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SpendingGraph(chart: _chart),
                            SizedBox(height: 24),
                            SpendingDateRange(chart: _chart),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SpendingCategoryList(updateNotifier: _chart),
          ],
        ),
      ),
    );
  }

  bool _handleInteract(InteractNotification notification) {
    if (notification.end) {
      _controller.value = _chart.domainStart;
      double target = _chart.domainStart.round().toDouble();
      _controller.animateTo(target, curve: Curves.easeIn);
    } else {
      //_controller.stop();
    }
    return false;
  }
}
