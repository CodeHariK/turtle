import 'package:flutter/material.dart';
import 'package:turtle/vignettes/_shared/env.dart';
import 'package:turtle/vignettes/_shared/ui/app_scroll_behavior.dart';

import 'demo.dart';

void main() => runApp(TicketFoldApp());

class TicketFoldApp extends StatelessWidget {
  static String _pkg = "ticket_fold";
  static String? get pkg => Env.getPackage(_pkg);

  @override
  Widget build(BuildContext context) {
    const title = 'Ticket Fold Demo';
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: title,
      home: TicketFoldDemo(),
    );
  }
}
