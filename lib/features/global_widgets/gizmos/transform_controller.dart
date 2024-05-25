import 'package:get/get.dart';
import 'package:vector_math/vector_math_64.dart';

class TransformGizmos2DController extends GetxController {
  var position = Vector2(0, 0).obs;
}

TransformGizmos2DController useTrasnformGizmos2D() =>
    Get.put(TransformGizmos2DController());
