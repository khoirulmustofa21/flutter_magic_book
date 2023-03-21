import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/elogin3_controller.dart';
import 'elogin3_content.dart';

class ELogin3View extends StatefulWidget {
  const ELogin3View({Key? key}) : super(key: key);

  Widget build(context, ELogin3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin3"),
        actions: const [],
      ),
      body: const Elogin3Content(),
    );
  }

  @override
  State<ELogin3View> createState() => ELogin3Controller();
}
