import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_x/provider/counterController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller = CounterController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return Text(
                  "${controller.getCounter}",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.deepPurple,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(
                    () {
                      return SizedBox(
                        height: 250,
                        width: 200,
                        child: GridView.builder(
                          itemCount: controller.sen.length,
                          itemBuilder: (context, index) => Card(
                            child: Center(
                              child: Text("${controller.sen[index]}"),
                            ),
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                        ),
                      );
                    },
                  ),
                  Obx(
                    () {
                      return Container(
                        height: 250,
                        width: 250,
                        child: GridView.builder(
                          itemCount: controller.ffs.length,
                          itemBuilder: (context, index) => Card(
                            child: Center(
                              child: Text("${controller.ffs[index]}"),
                            ),
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                        ),
                      );
                    },
                  ),
                  Obx(
                    () {
                      return Container(
                        height: 250,
                        width: 250,
                        child: GridView.builder(
                          itemCount: controller.ott.length,
                          itemBuilder: (context, index) => Card(
                            child: Center(
                              child: Text("${controller.ott[index]}"),
                            ),
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
