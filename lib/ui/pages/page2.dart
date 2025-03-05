import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/count_controller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.find<CountController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${controller.count.value}',
                style: Theme.of(context).textTheme.headlineMedium)),
            ElevatedButton(
                key: const Key('incrementButtonPage2'),
                onPressed: () => controller.increment(),
                child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}
