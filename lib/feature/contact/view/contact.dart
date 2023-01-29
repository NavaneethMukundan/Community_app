import 'package:community_app/data/colors/colors.dart';
import 'package:community_app/data/constrains/theme/size_constraints.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
            'Contact',
            style: TextStyle(
                fontSize: 25, color: kWhite, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add_alt_rounded,
                    color: kWhite,
                    size: 35,
                  )),
              sWidth10
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sHeight40,
            Container(
              height: height / 1.290,
              width: width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: kWhite),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Icon(Icons.minimize),
                    ),
                    sHeight40,
                    const Padding(
                      padding: EdgeInsets.only(left: 29, bottom: 8),
                      child: Text(
                        'My Contact',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kBlack),
                      ),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(
                                  'https://img.kapook.com/u/2017/surauch/movie/jryr1.jpg'),
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
