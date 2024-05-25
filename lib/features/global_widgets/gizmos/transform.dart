import 'package:flutter/material.dart';
import 'package:luky2d_game_engine/features/global_widgets/gizmos/transform_controller.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class TrasnformGizmos2D extends StatelessWidget {
  final double? size;
  final double? centralScale;
  final double? thikness;
  const TrasnformGizmos2D(
      {super.key, this.size, this.thikness, this.centralScale});

  @override
  Widget build(BuildContext context) {
    final controller = useTrasnformGizmos2D();
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(20),
          width: size ?? 280,
          height: size ?? 280,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: thikness ?? 10,
                height: (size ?? 280) - 80,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: (size ?? 280) - 80,
                height: thikness ?? 10,
                color: Colors.green,
              ),
            ],
          ),
        ),
        Positioned(
          left: (thikness ?? 10) + 30,
          bottom: (thikness ?? 10) + 30,
          child: Container(
            width: centralScale ?? 40,
            height: centralScale ?? 40,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: 11,
          left: ((thikness ?? 10)) - 30,
          child: Transform.rotate(
            angle: 3.13,
            child: ShapeOfView(
              width: (thikness ?? 15) + 30,
              height: 20,
              elevation: 0,
              shape: TriangleShape(
                percentBottom: 0.5,
                percentLeft: 0,
                percentRight: 0,
              ),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 14,
          right: 11,
          child: Transform.rotate(
            angle: -1.56,
            child: ShapeOfView(
              width: 30,
              height: 20,
              elevation: 0,
              shape: TriangleShape(
                percentBottom: 0.5,
                percentLeft: 0,
                percentRight: 0,
              ),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
