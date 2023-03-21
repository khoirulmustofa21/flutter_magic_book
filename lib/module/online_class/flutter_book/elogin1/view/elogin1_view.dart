import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/online_class/flutter_book/elogin1/view/elogin1_content.dart';

import '../controller/elogin1_controller.dart';
import 'customColors.dart';

class ELogin1View extends StatefulWidget {
  const ELogin1View({Key? key}) : super(key: key);

  Widget build(context, ELogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: CustomColors.colorBackground,
      appBar: AppBar(
        title: const Text("ELogin1"),
        actions: const [],
      ),
      body: const Elogin1Content(),
    );
  }

  @override
  State<ELogin1View> createState() => ELogin1Controller();
}

