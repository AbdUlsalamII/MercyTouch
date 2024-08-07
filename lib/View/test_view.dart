import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercy_touch/Controller/test_controller.dart';
import 'package:mercy_touch/Core/Class/handlingdataview.dart';
class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              }),
        );
      }),
    );
  }
}
