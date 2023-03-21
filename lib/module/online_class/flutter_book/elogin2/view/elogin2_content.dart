import 'package:flutter/material.dart';
import 'package:hyper_ui/module/online_class/flutter_book/elogin1/view/customColors.dart';

class Elogin2Content extends StatefulWidget {
  const Elogin2Content({Key? key}) : super(key: key);

  @override
  State<Elogin2Content> createState() => _Elogin2ContentState();
}

class _Elogin2ContentState extends State<Elogin2Content> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    paddingLR({double t = 0, double b = 0}) =>
        EdgeInsets.only(left: 30.0, right: 30.0, top: t, bottom: b);

    return Container(
      height: height,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 17, right: 17, top: 30, bottom: 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/logo/BeigeAndBrownAudioBookLogo2.png',
                    height: 69,
                    width: 65,
                  ),
                ),
              ),
              Padding(
                padding: paddingLR(),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Scheme \niOS Wireframe Layouts',
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                          height: 1.1111),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: paddingLR(t: 18),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 255,
                    child: Text(
                      'Biggest collection of 300+ layouts \nfor iOS prototyping.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing: 0.4,
                          height: 1.375 // 22px / 16px = 1.375
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: paddingLR(b: 40),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Use Facebook to find your friends',style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        letterSpacing: 0.2,
                        color: CustomColors.colorText2
                    ),),),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(CustomColors.colorPrimary),
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 48),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Log In with Facebook',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),),
                        Icon(Icons.facebook),
                      ],
                    ),
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
