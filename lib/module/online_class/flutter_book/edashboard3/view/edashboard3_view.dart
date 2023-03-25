import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard3_controller.dart';

class EDashboard3View extends StatefulWidget {
  const EDashboard3View({Key? key}) : super(key: key);

  Widget build(context, EDashboard3Controller controller) {
    controller.view = this;

    List categories = [
      {
        'category': 'adidas',
        'title': 'Gazelle Suede',
        'description':
            'The Adidas Originals draw inspiration from street culture and retro styles.',
        'image':
            'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      },
      {
        'category': 'Puma',
        'title': 'Soccer Boots ',
        'description':
            "A focus on functionality as well as style is paramount in PUMA's designs",
        'image':
            "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      },
      {
        'category': 'Reebok',
        'title': 'Combat Boxing ',
        'description':
            "Reebok have aligned themselves with some of the world's top athletes",
        'image':
            "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
      },
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 30.0),
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
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
                    "Scheme Store",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Color(0xffAAAAAA),
                    radius: 15.0,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 305,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xffCDCDCD),
                  image: DecorationImage(
                    image: NetworkImage(categories[0]['image']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: const EdgeInsets.only(
                                right: 2, left: 2, top: 2),
                            child: Text(
                              categories[0]['category'],
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                color: Colors.black,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: const EdgeInsets.only(
                                right: 2, left: 2, bottom: 2),
                            child: Text(
                              categories[0]['title'],
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.2,
                                fontSize: 34,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: const EdgeInsets.only(
                                right: 2, left: 2, bottom: 2, top: 2),
                            child: Text(
                              categories[0]['description'],
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: 2,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 165,
                    height: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      // color: Colors.purple,
                      image: DecorationImage(
                        image: NetworkImage(
                          categories[index + 1]['image'],
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0.5),
                                padding: const EdgeInsets.only(
                                    right: 2, left: 2, top: 2),
                                child: Text(
                                  categories[index + 1]['category'],
                                  style: const TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Colors.black,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white.withOpacity(0.5),
                                padding: const EdgeInsets.only(
                                    right: 2, left: 2, bottom: 2),
                                child: Text(
                                  categories[index + 1]['title'],
                                  style: const TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                color: Colors.white.withOpacity(0.5),
                                padding: const EdgeInsets.only(
                                    right: 2, left: 2, bottom: 2, top: 2),
                                child: Text(
                                  categories[index + 1]['description'],
                                  style: const TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EDashboard3View> createState() => EDashboard3Controller();
}
