import 'dart:math';

import 'package:flutter/material.dart';

enum DotType { square, circle, diamond, icon }

class ColorLoader extends StatefulWidget {
  final double radius;
  final double dotRadius;

  ColorLoader({this.radius = 30.0, this.dotRadius = 8.0});

  @override
  _ColorLoaderState createState() => _ColorLoaderState();
}

class _ColorLoaderState extends State<ColorLoader>
    with SingleTickerProviderStateMixin {
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;
  AnimationController controller;

  double radius;
  double dotRadius;

  @override
  void initState() {
    super.initState();

    radius = widget.radius;
    dotRadius = widget.dotRadius;

    // print(dotzRadius);

    controller = AnimationController(
        lowerBound: 0.0,
        upperBound: 1.0,
        duration: const Duration(milliseconds: 3000),
        vsync: this);

    animation_rotation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 1.0, curve: Curves.linear),
      ),
    );

    animation_radius_in = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.75, 1.0, curve: Curves.elasticIn),
      ),
    );

    animation_radius_out = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 0.25, curve: Curves.elasticOut),
      ),
    );

    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0)
          radius = widget.radius * animation_radius_in.value;
        else if (controller.value >= 0.0 && controller.value <= 0.25)
          radius = widget.radius * animation_radius_out.value;
      });
    });

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {}
    });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      //color: Colors.black12,
      child: new Center(
        child: new RotationTransition(
          turns: animation_rotation,
          child: new Container(
            //color: Colors.limeAccent,
            child: new Center(
              child: Stack(
                children: <Widget>[
                  new Transform.translate(
                    offset: Offset(0.0, 0.0),
                    child: Dot(
                      radius: radius,
                      color: Colors.black12,
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.amber,
                    ),
                    offset: Offset(
                      radius * cos(0.0),
                      radius * sin(0.0),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.deepOrangeAccent,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 1 * pi / 4),
                      radius * sin(0.0 + 1 * pi / 4),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.pinkAccent,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 2 * pi / 4),
                      radius * sin(0.0 + 2 * pi / 4),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.purple,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 3 * pi / 4),
                      radius * sin(0.0 + 3 * pi / 4),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.yellow,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 4 * pi / 4),
                      radius * sin(0.0 + 4 * pi / 4),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.lightGreen,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 5 * pi / 4),
                      radius * sin(0.0 + 5 * pi / 4),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.orangeAccent,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 6 * pi / 4),
                      radius * sin(0.0 + 6 * pi / 4),
                    ),
                  ),
                  new Transform.translate(
                    child: Dot(
                      radius: dotRadius,
                      color: Colors.blueAccent,
                    ),
                    offset: Offset(
                      radius * cos(0.0 + 7 * pi / 4),
                      radius * sin(0.0 + 7 * pi / 4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

// class ColorLoader extends StatefulWidget {
//
//   final Color color1;
//   final Color color2;
//   final Color color3;
//
//   ColorLoader({this.color1 = Colors.deepOrangeAccent, this.color2 = Colors.yellow, this.color3 = Colors.lightGreen});
//
//   @override
//   _ColorLoaderState createState() => _ColorLoaderState();
// }
//
// class _ColorLoaderState extends State<ColorLoader> with TickerProviderStateMixin {
//
//   Animation<double> animation1;
//   Animation<double> animation2;
//   Animation<double> animation3;
//   AnimationController controller1;
//   AnimationController controller2;
//   AnimationController controller3;
//
//   @override
//   void initState() {
//     super.initState();
//
//     controller1 = AnimationController(
//         duration: const Duration(milliseconds: 1200), vsync: this);
//
//     controller2 = AnimationController(
//         duration: const Duration(milliseconds: 900), vsync: this);
//
//     controller3 = AnimationController(
//         duration: const Duration(milliseconds: 2000), vsync: this);
//
//     animation1 = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//         parent: controller1,
//         curve: Interval(
//             0.0, 1.0, curve: Curves.linear
//         )
//     ));
//
//     animation2 = Tween<double>(begin: -1.0, end: 0.0).animate(CurvedAnimation(
//         parent: controller2,
//         curve: Interval(
//             0.0, 1.0, curve: Curves.easeIn
//         )
//     ));
//
//     animation3 = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//         parent: controller3,
//         curve: Interval(
//             0.0, 1.0, curve: Curves.decelerate
//         )
//     ));
//
//     controller1.repeat();
//     controller2.repeat();
//     controller3.repeat();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         children: <Widget>[
//           new RotationTransition(
//             turns: animation1,
//             child: CustomPaint(
//               painter: Arc1Painter(widget.color1),
//               child: Container(
//                 width: 50.0,
//                 height: 50.0,
//               ),
//             ),
//           ), new RotationTransition(
//             turns: animation2,
//             child: CustomPaint(
//               painter: Arc2Painter(widget.color2),
//               child: Container(
//                 width: 50.0,
//                 height: 50.0,
//               ),
//             ),
//           ), new RotationTransition(
//             turns: animation3,
//             child: CustomPaint(
//               painter: Arc3Painter(widget.color3),
//               child: Container(
//                 width: 50.0,
//                 height: 50.0,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     controller1.dispose();
//     controller2.dispose();
//     controller3.dispose();
//     super.dispose();
//   }
//
// }
//
// class Arc1Painter extends CustomPainter {
//
//   final Color color;
//
//   Arc1Painter(this.color);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Paint p1 = new Paint()
//       ..color = color
//       ..strokeWidth = 2.0
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.stroke;
//
//     Rect rect1 = new Rect.fromLTWH(0.0, 0.0, size.width, size.height);
//
//     canvas.drawArc(rect1, 0.0 , 0.5 * pi, false, p1);
//     canvas.drawArc(rect1, 0.6 * pi , 0.8 * pi, false, p1);
//     canvas.drawArc(rect1, 1.5 * pi , 0.4 * pi, false, p1);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
//
// class Arc2Painter extends CustomPainter {
//
//   final Color color;
//
//   Arc2Painter(this.color);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Paint p2 = new Paint()
//       ..color = color
//       ..strokeWidth = 2.0
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.stroke;
//
//     Rect rect2 = new Rect.fromLTWH(0.0 + (0.2 * size.width)/2, 0.0 + (0.2 * size.height)/2, size.width - 0.2 * size.width, size.height - 0.2 * size.height);
//
//     canvas.drawArc(rect2, 0.0 , 0.5 * pi, false, p2);
//     canvas.drawArc(rect2, 0.8 * pi , 0.6 * pi, false, p2);
//     canvas.drawArc(rect2, 1.6 * pi , 0.2 * pi, false, p2);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
//
// class Arc3Painter extends CustomPainter {
//
//   final Color color;
//
//   Arc3Painter(this.color);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Paint p3 = new Paint()
//       ..color = color
//       ..strokeWidth = 1.5
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.stroke;
//
//     Rect rect3 = new Rect.fromLTWH(0.0 + (0.4 * size.width)/2, 0.0 + (0.4 * size.height)/2, size.width - 0.4 * size.width, size.height - 0.4 * size.height);
//
//     canvas.drawArc(rect3, 0.0 , 0.9 * pi, false, p3);
//     canvas.drawArc(rect3, 1.1 * pi , 0.8 * pi, false, p3);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
//
//

// class ColorLoader extends StatefulWidget {
//
//   final Color dotOneColor;
//   final Color dotTwoColor;
//   final Color dotThreeColor;
//   final Duration duration;
//   final DotType dotType;
//   final Icon dotIcon;
//
//   ColorLoader({
//     this.dotOneColor = const Color(0xFFcb3534),
//     this.dotTwoColor = const Color(0xFFf3d310),
//     this.dotThreeColor =  Colors.blueGrey,
//     this.duration = const Duration(milliseconds: 1000),
//     this.dotType = DotType.circle,
//     this.dotIcon = const Icon(Icons.blur_on)
//   });
//
//   @override
//   _ColorLoaderState createState() => _ColorLoaderState();
// }
//
// class _ColorLoaderState extends State<ColorLoader>
//     with SingleTickerProviderStateMixin {
//   Animation<double> animation_1;
//   Animation<double> animation_2;
//   Animation<double> animation_3;
//   AnimationController controller;
//
//   @override
//   void initState() {
//     super.initState();
//
//     controller = AnimationController(
//         duration: widget.duration, vsync: this);
//
//     animation_1 = Tween(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Interval(0.0, 0.70, curve: Curves.linear),
//       ),
//     );
//
//     animation_2 = Tween(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Interval(0.1, 0.80, curve: Curves.linear),
//       ),
//     );
//
//     animation_3 = Tween(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Interval(0.2, 0.90, curve: Curves.linear),
//       ),
//     );
//
//     controller.addListener(() {
//       setState(() {
//         //print(animation_1.value);
//       });
//     });
//
//     controller.repeat();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //print(animation_1.value <= 0.4 ? 2.5 * animation_1.value : (animation_1.value > 0.40 && animation_1.value <= 0.60) ? 1.0 : 2.5 - (2.5 * animation_1.value));
//     return Container(
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Opacity(
//             opacity: (animation_1.value <= 0.4 ? 2.5 * animation_1.value : (animation_1.value > 0.40 && animation_1.value <= 0.60) ? 1.0 : 2.5 - (2.5 * animation_1.value)),
//             child: new Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: Dot(
//                 radius: 10.0,
//                 color: widget.dotOneColor,
//                 type: widget.dotType,
//                 icon: widget.dotIcon,
//               ),
//             ),
//           ),
//           Opacity(
//             opacity: (animation_2.value <= 0.4 ? 2.5 * animation_2.value : (animation_2.value > 0.40 && animation_2.value <= 0.60)? 1.0 : 2.5 - (2.5 * animation_2.value)),
//             child: new Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: Dot(
//                 radius: 10.0,
//                 color: widget.dotTwoColor,
//                 type: widget.dotType,
//                 icon: widget.dotIcon,
//               ),
//             ),
//           ),
//           Opacity(
//             opacity: (animation_3.value <= 0.4 ? 2.5 * animation_3.value : (animation_3.value > 0.40 && animation_3.value <= 0.60) ? 1.0 : 2.5 - (2.5 * animation_3.value)),
//             child: new Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: Dot(
//                 radius: 10.0,
//                 color: widget.dotThreeColor,
//                 type: widget.dotType,
//                 icon: widget.dotIcon,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//
//     controller.dispose();
//     super.dispose();
//   }
// }
//
// class Dot extends StatelessWidget {
//   final double radius;
//   final Color color;
//   final DotType type;
//   final Icon icon;
//
//   Dot({this.radius, this.color, this.type, this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return new Center(
//       child: type == DotType.icon ?
//       Icon(icon.icon, color: color, size: 1.3 * radius,)
//           : new Transform.rotate(
//         angle: type == DotType.diamond ? pi/4 : 0.0,
//         child: Container(
//           width: radius,
//           height: radius,
//           decoration: BoxDecoration(color: color, shape: type == DotType.circle? BoxShape.circle : BoxShape.rectangle),
//         ),
//       ),
//     );
//   }
// }
