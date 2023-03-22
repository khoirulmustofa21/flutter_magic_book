import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../elogin1/view/customColors.dart';
import '../controller/esignup2_controller.dart';

class ESignup2View extends StatefulWidget {
  const ESignup2View({Key? key}) : super(key: key);

  Widget build(context, ESignup2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 100,
          padding: const EdgeInsets.only(
            right: 15,
            top: 15,
            left: 15,
            bottom: 40,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 44,
                  width: 375,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Icon(
                          Icons.close,
                          color: CustomColors.colorPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: CustomColors.colorSemiDark,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: Stack(
                          children: [
                            const Center(
                              child: Icon(
                                Icons.person,
                                size: 60,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: CustomColors.colorPrimary,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          textField1('Full Name'),
                          const SizedBox(
                            height: 10,
                          ),
                          textField1('Email'),
                          const SizedBox(
                            height: 10,
                          ),
                          textField1('Password'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  CustomColors.colorPrimary),
                              minimumSize: MaterialStateProperty.all(
                                const Size(double.infinity, 48),
                              ),
                            ),
                            child: Text(
                              'Create an Account',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                color: CustomColors.colorBackground,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          SizedBox(
                            width: 187,
                            height: 36,
                            child: Column(
                              children: [
                                Text(
                                  'By signing up, you agree to our',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.2,
                                      color: CustomColors.colorText2),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'Terms',
                                        style: TextStyle(
                                          color: CustomColors.colorPrimary,
                                          fontFamily: 'Roboto',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' and ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.2,
                                          color: CustomColors.colorText2),
                                      textAlign: TextAlign.center,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'Privacy',
                                        style: TextStyle(
                                          color: CustomColors.colorPrimary,
                                          fontFamily: 'Roboto',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 44,
                  width: 375,
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'I have an Account',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: CustomColors.colorPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField1(String hint) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        color: CustomColors.colorSemiDark,
      ),
      child: TextField(
        controller: null,
        style: TextStyle(
            color: CustomColors.colorText2,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
              color: CustomColors.colorText2,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 16),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }

  @override
  State<ESignup2View> createState() => ESignup2Controller();
}
