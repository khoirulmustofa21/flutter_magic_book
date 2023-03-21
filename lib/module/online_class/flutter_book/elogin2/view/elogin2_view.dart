import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin2_controller.dart';
import 'elogin2_content.dart';

class ELogin2View extends StatefulWidget {
  const ELogin2View({Key? key}) : super(key: key);

  Widget build(context, ELogin2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin2"),
        actions: const [],
      ),
      body: const Elogin2Content()
    );
  }

  @override
  State<ELogin2View> createState() => ELogin2Controller();
}
