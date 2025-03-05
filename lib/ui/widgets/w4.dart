import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/count_controller.dart';

class W4 extends StatelessWidget {
  const W4({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.find<CountController>();

    return Container(
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              key: Key('decrementButton'),
              onPressed: () => controller.decrement(),
              child: const Text('Decrease'))
        ],
      ),
    );
  }
}
