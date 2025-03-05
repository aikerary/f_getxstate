import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/count_controller.dart';

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.find<CountController>();

    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('${controller.count.value}',
              style: Theme.of(context).textTheme.headlineMedium)),
          ElevatedButton(
              key: const Key('incrementButton'),
              onPressed: () => controller.increment(),
              child: const Text('Increment'))
        ],
      ),
    );
  }
}
