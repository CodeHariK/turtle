import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turtle/renderobject/animatedbox.dart';
import 'package:turtle/renderobject/mycolumn.dart';
import 'package:turtle/renderobject/myrow.dart';
import 'package:turtle/renderobject/redbox.dart';

void main() {
  runApp(ProviderScope(child: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Column(
          children: [
            RedBox(),

            MyRow(
              children: [
                ColoredBox(
                  color: Color(0xFF2196F3),
                  child: SizedBox(width: 50, height: 50),
                ),
                ColoredBox(
                  color: Color(0xFF4CAF50),
                  child: SizedBox(width: 70, height: 30),
                ),
                ColoredBox(
                  color: Color(0xFFFF9800),
                  child: SizedBox(width: 40, height: 40),
                ),
              ],
            ),

            Demo(),

            Expanded(
              child: MyColumn(
                alignment: MyMainAxisAlignment.spaceAround,
                spacing: 20,
                children: [
                  ColoredBox(
                    color: Color(0xFF673AB7),
                    child: SizedBox(width: 100, height: 40),
                  ),
                  ColoredBox(
                    color: Color(0xFFE91E63),
                    child: SizedBox(width: 80, height: 60),
                  ),
                  ColoredBox(
                    color: Color(0xFF03A9F4),
                    child: SizedBox(width: 120, height: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({super.key});
  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool big = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => big = !big);
      },
      child: Center(
        child: AnimatedBox(
          width: big ? 200 : 100,
          height: big ? 200 : 100,
          duration: Duration(seconds: 1),
          color: big ? Colors.red : Colors.blue,
        ),
      ),
    );
  }
}
