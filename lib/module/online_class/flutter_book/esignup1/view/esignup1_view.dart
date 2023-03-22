import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../elogin1/view/customColors.dart';
import '../controller/esignup1_controller.dart';

class ESignup1View extends StatefulWidget {
  const ESignup1View({Key? key}) : super(key: key);

  Widget build(context, ESignup1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ESignup1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            child: Column(
              children: [
                AppBar(
                  leading: IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: CustomColors.colorPrimary,
                    ),
                  ),
                  elevation: 0,
                  actions: [
                    SizedBox(
                      width: 375,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: CustomColors.colorPrimary,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                fontSize: 16,
                              ),
                            ),
                            Image.asset(
                              'assets/logo/BeigeAndBrownAudioBookLogo2.png',
                              scale: 1.5,
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 375,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 23,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              minimumSize: const MaterialStatePropertyAll(
                                Size(315, 48),
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                  CustomColors.colorSemiDark)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Log In with Facebook',
                                style: TextStyle(
                                    fontFamily: 'Robot',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Icon(
                                Icons.facebook,
                                color: CustomColors.colorText2,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'or sign up with Email',
                            style: TextStyle(
                              color: CustomColors.colorText2,
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        textField1('First Name'),
                        const SizedBox(
                          height: 10,
                        ),
                        textField1('Last Name'),
                        const SizedBox(
                          height: 10,
                        ),
                        textField1('Email'),
                        const SizedBox(
                          height: 10,
                        ),
                        textField1('Password'),
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
                            'Continue',
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
                          width: 230,
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
                ),
              ],
            ),
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
  State<ESignup1View> createState() => ESignup1Controller();
}
