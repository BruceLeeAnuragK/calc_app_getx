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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tap buttons"),
          Obx(
            () {
              return Text(
                "${controller.getCounter}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              );
            },
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.increament();
                },
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decreament();
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
