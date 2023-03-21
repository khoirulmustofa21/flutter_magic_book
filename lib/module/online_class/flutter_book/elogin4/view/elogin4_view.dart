import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/online_class/flutter_book/elogin1/view/customColors.dart';
import '../controller/elogin4_controller.dart';

class ELogin4View extends StatefulWidget {
  const ELogin4View({Key? key}) : super(key: key);

  Widget build(context, ELogin4Controller controller) {
    controller.view = this;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ELogin4"),
        actions: const [],
      ),
      body: Container(
        height: height,
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 31, bottom: 40),
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                      'assets/logo/BeigeAndBrownAudioBookLogo2.png'),
                ),
                const SizedBox(
                  height: 85,
                ),
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Larry Dennis',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.2,
                            color: CustomColors.colorText1),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'larry.dennis@gmail.io',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          letterSpacing: 0.4,
                          color: CustomColors.colorText1,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(CustomColors.colorPrimary),
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 48),
                      ),
                    ),
                    child: Text(
                      'Continue as Dennis',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.colorBackground,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Choose another account',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: CustomColors.colorPrimary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ELogin4View> createState() => ELogin4Controller();
}
