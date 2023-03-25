import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard4_controller.dart';

class EDashboard4View extends StatefulWidget {
  const EDashboard4View({Key? key}) : super(key: key);

  Widget build(context, EDashboard4Controller controller) {
    controller.view = this;

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

    String images =
        "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80";

    controller.view = this;
    double paddingxy = 15;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff59B58D),
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.only(left: paddingxy, right: paddingxy),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Feed',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffCDCDCD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 11, right: 11),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Color(0xff959FA2),
                          ),
                          SizedBox(width: 7),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.4,
                                  color: Color(0xff959FA2),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.4,
                                color: Color(0xff959FA2),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.mic,
                            color: Color(0xff959FA2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: paddingxy,
                ),
                height: 115,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: statusList.length + 1,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      // Untuk widget tambah status
                      return GestureDetector(
                        onTap: () => print('tombol add status di klik'),
                        child: Container(
                          width: 85,
                          height: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffCDCDCD),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  width: 32,
                                  height: 32,
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
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(top: 59),
                                child: Text(
                                  'Add Story',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                    color: Color(0xff455154),
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                      );
                    } else {
                      // Untuk widget status dari list
                      return GestureDetector(
                        onTap: () => print('tombol add status di klik'),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 85,
                          height: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            // shape: BoxShape.circle,
                            color: const Color(0xffCDCDCD),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xff455154),
                                  ),
                                ),
                              ),
                              const Center(
                                  child: Padding(
                                padding: EdgeInsets.only(
                                    top: 59, left: 10, right: 10),
                                child: Text(
                                  'Cecillia Wat',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.2,
                                    color: Color(0xff455154),
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              IntrinsicHeight(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, right: 15, bottom: 22),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xffE6E9EB))),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Color(0xffCDCDCD),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff455154),
                              size: 17,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Maud Matthews',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                          SizedBox(
                            width: 7.0,
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Color(0xff455154),
                            size: 15,
                          ),
                          Spacer(),
                          Text(
                            '2 min ago',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff455154)),
                          ),
                          SizedBox(
                            width: 13.0,
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Color(0xff455154),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Never put off till tomorrow what may be done day after tomorrow just as well.",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          letterSpacing: 0.2,
                          height: 1.3,
                          color: Color(0xff455154),
                        ),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            '89.4K likes',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '93 comments',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xff959FA2),
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.message,
                              color: Color(0xff959FA2),
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.ios_share_outlined,
                              color: Color(0xff959FA2),
                              size: 19,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, right: 15, bottom: 22),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xffE6E9EB))),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Color(0xffCDCDCD),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff455154),
                              size: 17,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Emily Doyle',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                          SizedBox(
                            width: 7.0,
                          ),
                          // Icon(
                          //   Icons.check_circle,
                          //   color: Color(0xff455154),
                          //   size: 15,
                          // ),
                          Spacer(),
                          Text(
                            '1 hour ago',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff455154)),
                          ),
                          SizedBox(
                            width: 13.0,
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Color(0xff455154),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 195,
                            height: 166,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xffCDCDCD),
                              image: DecorationImage(
                                image: NetworkImage(images),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 140,
                                height: 78,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffCDCDCD),
                                  image: DecorationImage(
                                    image: NetworkImage(images),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                width: 140,
                                height: 78,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                          image: NetworkImage(images),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0x0ff3f6f6)
                                            .withOpacity(0.8),
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        '+6',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff455154),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            '5 likes',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '1 comments',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xff959FA2),
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.message,
                              color: Color(0xff959FA2),
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.ios_share_outlined,
                              color: Color(0xff959FA2),
                              size: 19,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EDashboard4View> createState() => EDashboard4Controller();
}
