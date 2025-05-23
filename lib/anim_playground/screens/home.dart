import 'package:flutter/material.dart';
import '../screens/flutter_transform.dart';
import '../screens/implicit_animations.dart';
import '../screens/tween_animation.dart';
import '../widgets/custom_text.dart';

import 'flutter_curves.dart';
import 'flutter_matrix_four.dart';

import 'nykaa_scroller.dart';
import 'staggred.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:
            Text('Flutter App Design', style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          RotAlign(),
          Divider(),
          Singler(),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Implicit Animated',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ImplicitAnimationsExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Flutter transform',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => FlutterTransformExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Flutter Matrix4',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => FlutterMatrixFourExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Flutter Animation curves',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => FlutterCurvesExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Flutter Tween Animations',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => TweenAnimationExample()));
            },
          ),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Nykaa',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Nykaa()));
            },
          ),
          Divider(),
          ListTile(
            leading: CustomText(
              '👉',
              size: 30,
            ),
            title: CustomText(
              'Staggred',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Staggred()));
            },
          ),
        ],
      ),
    );
  }
}

class RotAlign extends StatefulWidget {
  const RotAlign({Key? key}) : super(key: key);

  @override
  State<RotAlign> createState() => _RotAlignState();
}

class _RotAlignState extends State<RotAlign>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: AlignTransition(
            alignment: _alignAnimation,
            child: RotationTransition(
              turns: _rotationAnimation,
              child: Container(
                color: Colors.pink,
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: const [Colors.purple, Colors.pink, Colors.yellow],
                  stops: [0, _controller.value, 1],
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
              ),
            );
          },
        ),
        GradientTransition(stop: _rotationAnimation)
      ],
    );
  }
}

class GradientTransition extends AnimatedWidget {
  final Animation<double> stop;

  const GradientTransition({
    Key? key,
    required this.stop,
  }) : super(key: key, listenable: stop);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Colors.purple, Colors.pink, Colors.yellow],
          stops: [0, stop.value, 1],
        ),
      ),
    );
  }
}

class Singler extends StatefulWidget {
  const Singler({super.key});

  @override
  State<Singler> createState() => _SinglerState();
}

class _SinglerState extends State<Singler> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;
  late Animation colorAnimation;

  late Animation<double> seqanimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    sizeAnimation = Tween(begin: 100.0, end: 300.0).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.0, 0.5)));
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(
        CurvedAnimation(parent: controller, curve: Interval(0.5, 1.0)));

    seqanimation = TweenSequence<double>(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 5.0, end: 10.0)
              .chain(CurveTween(curve: Curves.ease)),
          weight: 40.0,
        ),
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(10.0),
          weight: 20.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 10.0, end: 5.0)
              .chain(CurveTween(curve: Curves.ease)),
          weight: 40.0,
        ),
      ],
    ).animate(controller);
  }

// In initState()
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      child: Center(
        child: Container(
          height: sizeAnimation.value,
          width: sizeAnimation.value,
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     width: seqanimation.value * 10,
          //     color: Colors.amber,
          //   ),
          //   borderRadius: BorderRadius.all(
          //     Radius.elliptical(
          //       seqanimation.value * 2,
          //       seqanimation.value * 3,
          //     ),
          //   ),
          // ),
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
