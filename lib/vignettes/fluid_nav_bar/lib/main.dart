import 'package:flutter/material.dart';
import 'package:turtle/vignettes/_shared/ui/app_scroll_behavior.dart';

import './demo.dart';

void main() => runApp(FluidNavBarApp());

class FluidNavBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: FluidNavBarDemo(),
    );
  }
}
