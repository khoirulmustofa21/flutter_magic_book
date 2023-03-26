import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard5_controller.dart';

class EDashboard5View extends StatefulWidget {
  const EDashboard5View({Key? key}) : super(key: key);

  Widget build(context, EDashboard5Controller controller) {
    controller.view = this;
    String text =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget mi quam. Nullam non orci non turpis dapibus elementum eu in enim. Aenean malesuada mi ut magna finibus, nec convallis nisl bibendum. Nulla facilisi. Aenean sed lacus pharetra, ullamcorper mi eu, finibus purus. Vestibulum euismod blandit dolor, vel dictum nisl mollis non. Curabitur euismod elit a magna semper, eu placerat ipsum bibendum. Proin venenatis justo nec lorem auctor, ac feugiat metus molestie. Sed quis facilisis quam. Ut vel ultricies nulla. Sed sodales, nunc et lobortis vehicula, libero felis commodo tortor, eu blandit ante turpis auctor nibh. Sed tristique eu enim id posuere. Pellentesque aliquam quam vel leo tristique, ac pulvinar enim rhoncus. In ac ipsum elit. Sed volutpat, mauris eget bibendum iaculis, ante arcu volutpat sapien, a auctor lorem enim a arcu.';
    int maxLength = 35;
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 15.0,
                  ),
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: Stack(
                      children: const [
                        Icon(
                          Icons.circle,
                          size: 28,
                          color: Color(0xffC3C9CB),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Icon(
                            Icons.signal_cellular_4_bar_rounded,
                            color: Colors.green,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Icon(
                            Icons.square,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Scheme Social",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.add),
                  const SizedBox(
                    width: 17.0,
                  ),
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 17.0,
                  ),
                  const Icon(Icons.more_horiz),
                  const SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                // padding: const EdgeInsets.only(left: 15),
                height: 67,
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
                        onTap: () => print('tombol add status di klik'),
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
              ),
              const SizedBox(
                height: 10.0,
              ),

              // Posts
              IntrinsicHeight(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 15, left: 15, right: 15, bottom: 22),
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 8, color: Color(0xffF3F6F6))),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Color(0xffCDCDCD),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff455154),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Maud Matthews',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    'with',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    "Blake Abbott",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '2 min ago',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.0,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 1.0,
                                  ),
                                  Text(
                                    "London, UK",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 7.0,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_horiz,
                            // color: Color(0xff455154),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 166,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          // image: DecorationImage(
                          //   image: NetworkImage(
                          //       'https://via.placeholder.com/345x166'),
                          // ),
                          color: Color(0xffCDCDCD),
                        ),
                        child: const Icon(Icons.image),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.favorite),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(Icons.chat),
                          Spacer(),
                          Icon(
                            Icons.ios_share_outlined,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 17.0,
                      ),
                      Container(
                        height: 1,
                        decoration:
                            const BoxDecoration(color: Color(0xffE6E9EB)),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            '831 likes',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xff455154),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '61 comments',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xff455154),
                            ),
                          ),
                          Spacer(),
                          Text(
                            '8 shares',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xff455154),
                            ),
                          ),
                        ],
                      )
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
                        top: BorderSide(width: 8, color: Color(0xffF3F6F6))),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Color(0xffCDCDCD),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff455154),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Maud Matthews',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    'with',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    "Blake Abbott",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '2 min ago',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.0,
                                  ),
                                  Icon(
                                    Icons.location_on,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 1.0,
                                  ),
                                  Text(
                                    "London, UK",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 7.0,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_horiz,
                            // color: Color(0xff455154),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.setExpanded();
                        },
                        child: Text(
                          controller.isExpanded
                              ? text
                              : '${text.split(' ').take(maxLength).join(' ')} ...Read more',
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.favorite),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(Icons.chat),
                          Spacer(),
                          Icon(
                            Icons.ios_share_outlined,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 17.0,
                      ),
                      Container(
                        height: 1,
                        decoration:
                            const BoxDecoration(color: Color(0xffE6E9EB)),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            '831 likes',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xff455154),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            '61 comments',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xff455154),
                            ),
                          ),
                          Spacer(),
                          Text(
                            '8 shares',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Color(0xff455154),
                            ),
                          ),
                        ],
                      )
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
  State<EDashboard5View> createState() => EDashboard5Controller();
}
