import 'package:flutter/material.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({super.key});

  @override
  State<PostsWidget> createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    List posts = [
      {
        'id': 1,
        'user': {
          'name': 'Maud Mattjews',
          'image': null,
        },
        'action': {
          'with': 'with',
          'emoji': null,
          'object': 'Blake Abbott',
        },
        'location': 'London, UK',
        'create_at': '2 min ago',
        'content': {
          'image':
              "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
          'text': null,
          'likes': 831,
          'comments': 61,
          'shares': 8,
        },
      },
      {
        'id': 1,
        'user': {
          'name': 'Maud Mattjews',
          'image': null,
        },
        'action': {
          'with': 'with',
          'emoji': null,
          'object': 'Blake Abbott',
        },
        'location': 'London, UK',
        'create_at': '2 min ago',
        'content': {
          'image':
              "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
          'text': null,
          'likes': 831,
          'comments': 61,
          'shares': 8,
        },
      },
      {
        'id': 2,
        'user': {
          'name': 'Harriet Allen',
          'image': null,
        },
        'action': {
          'with': 'is',
          'emoji': 0x1F601,
          'object': 'feeling happy',
        },
        'location': null,
        'create_at': '3 hours ago',
        'content': {
          'image': null,
          'text':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget mi quam. Nullam non orci non turpis dapibus elementum eu in enim. Aenean malesuada mi ut magna finibus, nec convallis nisl bibendum. Nulla facilisi. Aenean sed lacus pharetra, ullamcorper mi eu, finibus purus. Vestibulum euismod blandit dolor, vel dictum nisl mollis non. Curabitur euismod elit a magna semper, eu placerat ipsum bibendum. Proin venenatis justo nec lorem auctor, ac feugiat metus molestie. Sed quis facilisis quam. Ut vel ultricies nulla. Sed sodales, nunc et lobortis vehicula, libero felis commodo tortor, eu blandit ante turpis auctor nibh. Sed tristique eu enim id posuere. Pellentesque aliquam quam vel leo tristique, ac pulvinar enim rhoncus. In ac ipsum elit. Sed volutpat, mauris eget bibendum iaculis, ante arcu volutpat sapien, a auctor lorem enim a arcu.',
          'likes': 831,
          'comments': 61,
          'shares': 8,
        },
      },
      {
        'id': 1,
        'user': {
          'name': 'Maud Mattjews',
          'image': null,
        },
        'action': {
          'with': 'with',
          'emoji': null,
          'object': 'Blake Abbott',
        },
        'location': 'London, UK',
        'create_at': '2 min ago',
        'content': {
          'image':
              "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
          'text': null,
          'likes': 831,
          'comments': 61,
          'shares': 8,
        },
      },
    ];

    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: posts.length,
            (context, index) {
      // myIndex = index;

      String create_at = posts[index]['create_at'];
      String location = posts[index]['location'] ?? '';
      int emoji = posts[index]['action']['emoji'] ?? 0;
      String img = posts[index]['content']['image'] ?? '';
      String text = posts[index]['content']['text'] ?? '';

      return Container(
        margin: const EdgeInsets.only(top: 10),
        padding:
            const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 22),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 8, color: Color(0xffF3F6F6))),
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
                      children: [
                        Text(
                          posts[index]['user']['name'],
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: Text(
                            posts[index]['action']['with'],
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        emoji == 0
                            ? const SizedBox(
                                width: 0,
                              )
                            : Icon(
                                IconData(
                                  emoji,
                                  fontFamily: 'Emoji',
                                ),
                                size: 12.0, // ukuran icon
                              ),
                        Padding(
                          padding: EdgeInsets.only(left: emoji != 0 ? 5 : 1),
                          child: Text(
                            posts[index]['action']['object'],
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        Text(
                          create_at,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 1.0,
                        ),
                        Icon(
                          Icons.location_on,
                          size: location == '' ? 0 : 14,
                        ),
                        const SizedBox(
                          width: 1.0,
                        ),
                        Text(
                          location,
                          style: const TextStyle(
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
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: isExpanded == false
                    ? Text(
                        text,
                        style: const TextStyle(
                            fontSize: 16.0, overflow: TextOverflow.ellipsis),
                        maxLines: 3,
                        textAlign: TextAlign.left,
                      )
                    : Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
              ),
            ),
            img != ''
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    height: 166,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                      color: Color(0xffCDCDCD),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          img,
                          height: 166.0,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  )
                : const SizedBox(),
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
              decoration: const BoxDecoration(color: Color(0xffE6E9EB)),
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
      );
    }));
  }
}
