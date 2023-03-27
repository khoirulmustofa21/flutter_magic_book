import 'package:flutter/material.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  final List<String> statusList = [
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
    'https://i.pravatar.cc/150?img=1',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.only(left: 15),
      height: 67,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: statusList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            // Untuk widget tambah status
            return GestureDetector(
              onTap: () => print('tombol add status di klik'),
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                width: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xff59B58D),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Add Story',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                          // color: Color(0xff455154),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            // Untuk widget status dari list
            return GestureDetector(
              onTap: () => print('tombol status index ke $index di klik'),
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                width: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xffCDCDCD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Color(0xff455154),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Maldsdsadsad…',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.2,
                          // color: Color(0xff455154),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
