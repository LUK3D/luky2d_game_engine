import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luky2d_game_engine/features/global_widgets/gizmos/transform.dart';

class EditorView extends StatelessWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: const Stack(
          alignment: Alignment.center,
          children: [
            TrasnformGizmos2D(
              size: 150,
              thikness: 40,
              centralScale: 30,
            ),
          ],
        ),
      ),
    );
  }
}
