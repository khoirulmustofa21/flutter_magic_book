import 'package:flutter/material.dart';

import '../../../../../core.dart';

import '../controller/edashboard6_controller.dart';

class EDashboard6View extends StatefulWidget {
  const EDashboard6View({Key? key}) : super(key: key);

  Widget build(context, EDashboard6Controller controller) {
    controller.view = this;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight - 5),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(6)),
          child: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24.0,
              ),
            ),
            title: SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: const InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          hintText: "Search",
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: null,
                      decoration: const InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        hintText: "Search",
                      ),
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16.0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 16.0,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16.0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 16.0,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16.0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 16.0,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "text",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2.0,
                                ),
                                const Text(
                                  "text",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                const Icon(Icons.location_on_sharp),
                                const Text(
                                  "text",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_horiz))
                              ],
                            ),
                            const Text("text"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Image(
                  image: NetworkImage('https://via.placeholder.com/100x100')),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EDashboard6View> createState() => EDashboard6Controller();
}
