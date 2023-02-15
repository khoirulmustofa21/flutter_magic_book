import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edr_dashboard3_controller.dart';

class EdrDashboard3View extends StatefulWidget {
  const EdrDashboard3View({Key? key}) : super(key: key);

  Widget build(context, EdrDashboard3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EdrDashboard3"),
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
  State<EdrDashboard3View> createState() => EdrDashboard3Controller();
}
