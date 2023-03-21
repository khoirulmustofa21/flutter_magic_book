import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../elogin1/view/customColors.dart';
import '../controller/elogin5_controller.dart';

class ELogin5View extends StatefulWidget {
  const ELogin5View({Key? key}) : super(key: key);

  Widget build(context, ELogin5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin5"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 106,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 142,
                  height: 142,
                  child: Image.asset(
                    'assets/logo/BeigeAndBrownAudioBookLogo2.png',
                    scale: 0.5,
                  ),
                ),
              ),
          const SizedBox(
            height: 46,
          ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(CustomColors.colorPrimary),
                  minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 48),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 65,
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Log In with Google',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.colorBackground,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(CustomColors.colorPrimary),
                  minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 48),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 65,
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Log In with Facebook',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.colorBackground,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(CustomColors.colorPrimary),
                  minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 48),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 65,
                    ),
                    Container(
                      width: 14,
                      height: 14,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'log In as Guest',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.colorBackground,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ELogin5View> createState() => ELogin5Controller();
}
