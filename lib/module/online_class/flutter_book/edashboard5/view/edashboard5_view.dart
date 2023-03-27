import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/edashboard5_controller.dart';
import '../widget/create_room_widget.dart';
import '../widget/posts_widget.dart';

class EDashboard5View extends StatefulWidget {
  const EDashboard5View({Key? key}) : super(key: key);

  Widget build(context, EDashboard5Controller controller) {
    controller.view = this;
    String text =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget mi quam. Nullam non orci non turpis dapibus elementum eu in enim. Aenean malesuada mi ut magna finibus, nec convallis nisl bibendum. Nulla facilisi. Aenean sed lacus pharetra, ullamcorper mi eu, finibus purus. Vestibulum euismod blandit dolor, vel dictum nisl mollis non. Curabitur euismod elit a magna semper, eu placerat ipsum bibendum. Proin venenatis justo nec lorem auctor, ac feugiat metus molestie. Sed quis facilisis quam. Ut vel ultricies nulla. Sed sodales, nunc et lobortis vehicula, libero felis commodo tortor, eu blandit ante turpis auctor nibh. Sed tristique eu enim id posuere. Pellentesque aliquam quam vel leo tristique, ac pulvinar enim rhoncus. In ac ipsum elit. Sed volutpat, mauris eget bibendum iaculis, ante arcu volutpat sapien, a auctor lorem enim a arcu.';
    int maxLength = 35;

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 24,
          height: 24,
          child: Stack(
            children: const [
              Positioned(
                top: 0,
                bottom: 5,
                right: 0,
                left: 0,
                child: Icon(
                  Icons.circle,
                  size: 28,
                  color: Color(0xffC3C9CB),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                top: 0,
                left: 10,
                child: Icon(
                  Icons.signal_cellular_4_bar_rounded,
                  color: Colors.green,
                ),
              ),
              Positioned(
                top: 0,
                bottom: 7,
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
        title: const Text(
          'Schame Social',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Aksi ketika tombol Add diklik
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Aksi ketika tombol Search diklik
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              // Aksi ketika tombol Menu diklik
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CreateRoomWidget(),
          ),
          PostsWidget(),
        ],
      ),
    );
  }

  @override
  State<EDashboard5View> createState() => EDashboard5Controller();
}
