import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/data/constrains/navigation/navigation.dart';
import 'package:community_app/data/constrains/theme/size_constraints.dart';
import 'package:community_app/feature/chat/view/chat.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: kWhite,
              size: 35,
            )),
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(
                fontSize: 25, color: kWhite, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Row(
            children: const [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-vector/girl-with-curly-black-hair-avatar-portrait-cute-character-blue-background-vector_456865-550.jpg'),
              ),
              sWidth10
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sHeight50,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  sWidth10,
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 38,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa69_HGc_i3MXKCPZzCfAjBZC4bXJsn0rS0Ufe6H-ctZz5FbIVaPkd1jCPTpKwPruIT3Q&usqp=CAU'),
                      ),
                      sHeight10,
                      Text(
                        'Your Story',
                        style: TextStyle(fontSize: 15, color: kWhite),
                      )
                    ],
                  ),
                  sWidth20,
                  Column(
                    children: [
                      Row(
                          children: List.generate(
                              5,
                              (index) => Column(
                                    children: [
                                      Row(
                                        children: const [
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundImage: NetworkImage(
                                                'https://static.vecteezy.com/system/resources/previews/010/967/316/original/avatar-bearded-man-free-vector.jpg'),
                                          ),
                                          sWidth20,
                                        ],
                                      ),
                                      sHeight10,
                                      const Padding(
                                        padding: EdgeInsets.only(right: 10 + 1),
                                        child: Text(
                                          'User',
                                          style: TextStyle(
                                              fontSize: 15, color: kWhite),
                                        ),
                                      )
                                    ],
                                  ))),
                    ],
                  ),
                ],
              ),
            ),
            sHeight20,
            Container(
              height: height / 1.59,
              width: width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: kWhite),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Center(
                      child: Icon(Icons.minimize),
                    ),
                    sHeight40,
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {
                              pushNavigation(context, ChatPage());
                            },
                            leading: const CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(
                                  'https://www.sketchappsources.com/resources/source-image/profile-illustration-gunaldi-yunus.png'),
                            ),
                            title: Text(
                              'User $index',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text(
                              'Hey how are you?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: kGrey),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '2 min ago',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kGrey),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red,
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: kWhite),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Text('');
                        },
                        itemCount: 30),
                    sHeight10,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
