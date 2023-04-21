import 'package:flutter/material.dart';
import 'core.dart';

/*
Performa
Flutter > React | Android or IOS
React > Flutter | Web

Kemudahan
Flutter > React

Fulltime - Flutter
Freelance - Fullstack

Front END
  - Bisa bikin UI
  - Consume API

  (Optional)
  - Testing
  - Deploy

Back END
  - Bisa bikin API  
      - API Login and get token
      - Middleware
  - Bisa bikin Dokumentasi

TIPS:
- Banyakin latihan
- Kurangi membaca, dan perbanyak latihan


100 Jam Ngoding = Bisa Ngoding


*/
Widget debugView({
  required BuildContext context,
  required bool visible,
  Widget? child,
}) {
  if (child == null) return Container();
  if (!visible) return Container();
  return Material(
    child: Stack(
      children: [
        child,
        Positioned(
          right: -8,
          bottom: 100,
          child: Container(
            width: 30.0,
            padding: const EdgeInsets.all(6.0),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Column(
              children: const [],
            ),
          ),
        ),
      ],
    ),
  );
}
