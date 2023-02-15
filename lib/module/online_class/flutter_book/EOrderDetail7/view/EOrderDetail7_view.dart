import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/eorderdetail7_controller.dart';

class EOrderDetail7View extends StatefulWidget {
  const EOrderDetail7View({Key? key}) : super(key: key);

  Widget build(context, EOrderDetail7Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EOrderDetail7"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<EOrderDetail7View> createState() => EOrderDetail7Controller();
}
