import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/count_controller.dart';

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.find<CountController>();

    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('${controller.count.value}',
              style: Theme.of(context).textTheme.headlineMedium)),
          ElevatedButton(
              key: const Key('resetButton'),
              onPressed: () => controller.reset(),
              child: const Text('Reset'))
        ],
      ),
    );
  }
}
