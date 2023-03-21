import 'package:flutter/material.dart';

import 'customColors.dart';

class Elogin1Content extends StatefulWidget {
  const Elogin1Content({Key? key}) : super(key: key);

  @override
  State<Elogin1Content> createState() => _Elogin1ContentState();
}

class _Elogin1ContentState extends State<Elogin1Content> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                heroWidget(),
                const SizedBox(
                  height: 18,
                ),
                detailWidget(),
                const SizedBox(
                  height: 72,
                ),
                textFieldEmail(),
                const SizedBox(
                  height: 10,
                ),
                textFieldPassword(),
                const SizedBox(
                  height: 20,
                ),
                buttonLogin(),
                const SizedBox(
                  height: 20,
                ),
                textForgotPassword(),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: buttonSignUp(),
            ),
          ],
        ),
      ),
    );
  }

  Widget heroWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 90,
          width: 230,
          child: Text(
            'Welcome \nto MagicBook',
            maxLines: 2,
            style: TextStyle(
                fontStyle: FontStyle.normal,
                overflow: TextOverflow.ellipsis,
                fontSize: 36,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
                color: CustomColors.colorText1,
                fontFamily: 'Roboto'),
          ),
        ),
        Image.asset(
          'assets/logo/BeigeAndBrownAudioBookLogo2.png',
          height: 69,
          width: 65,
        ),
      ],
    );
  }

  Widget detailWidget() {
    return const Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 255,
        height: 44,
        child: Text(
          'Biggest collection of 300+ layouts for iOS prototyping.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              letterSpacing: 0.4,
              color: Colors.black),
        ),
      ),
    );
  }

  Widget textFieldEmail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        color: CustomColors.colorSemiDark,
      ),
      child: TextField(
        style: TextStyle(
            color: CustomColors.colorText2,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Email',
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

  Widget textFieldPassword() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
        color: CustomColors.colorSemiDark,
      ),
      child: TextField(
        style: TextStyle(
            color: CustomColors.colorText2,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16),
        obscureText: _isObscured,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Password',
            hintStyle: TextStyle(
                color: CustomColors.colorText2,
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 16),
            contentPadding: const EdgeInsets.all(16),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
                icon: Icon(
                  _isObscured ? Icons.visibility : Icons.visibility_off,
                  color: CustomColors.colorText2,
                ))),
      ),
    );
  }

  Widget buttonLogin() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(CustomColors.colorPrimary),
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 48),
        ),
      ),
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto',
          color: CustomColors.colorBackground,
        ),
      ),
    );
  }

  Widget buttonSignUp() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(CustomColors.colorSemiDark),
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 48),
        ),
        shadowColor: MaterialStateProperty.all(Colors.white)
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                  color: CustomColors.colorText1,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: CustomColors.colorText2,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget textForgotPassword() {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: CustomColors.colorPrimary,
          ),
        ),
      ),
    );
  }
}
