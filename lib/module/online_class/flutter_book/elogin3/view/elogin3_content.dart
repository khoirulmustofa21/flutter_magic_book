import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/online_class/flutter_book/elogin1/view/customColors.dart';


class Elogin3Content extends StatefulWidget {
  const Elogin3Content({Key? key}) : super(key: key);

  @override
  State<Elogin3Content> createState() => _Elogin3ContentState();
}

class _Elogin3ContentState extends State<Elogin3Content> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
      height: height,
      child: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 83),
                  child: Column(
                    children: [
                      SizedBox(
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                            'assets/logo/BeigeAndBrownAudioBookLogo2.png',
                            scale: 0.1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const Text(
                        'Biggest collection of 300+ layouts \nfor iOS prototyping.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          height: 1.5
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Login with social networks',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: CustomColors.colorText2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(160, 48)),
                          backgroundColor: MaterialStateProperty.all(
                              CustomColors.colorPrimary)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1.222),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.facebook),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(160, 48)),
                        backgroundColor: MaterialStateProperty.all(
                            CustomColors.colorPrimary),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Twitter',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1.222),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            MdiIcons.twitter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  'or sign up with Email',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: CustomColors.colorText2),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                    minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: CustomColors.colorText1),
                      ),
                      Icon(
                        Icons.email,
                        color: CustomColors.colorText2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'Login with Email',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: CustomColors.colorPrimary),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
