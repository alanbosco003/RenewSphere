import 'package:base_flutter/presentation/explore/add_customer/imports/imports_parents_details.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/asset_consts.dart';
import 'package:graphics/widgets/buttons/icon_button_with_text.dart';
import 'package:graphics/widgets/feeds/feed_widget.dart';

class Feeds extends StatelessWidget {
  const Feeds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Avatar image (Replace with your image)
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 16.0,
                            backgroundColor: Colors.white,
                            // Replace the image with your user image
                            child: Icon(
                              Icons.account_circle,
                              size: 32.0,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Username',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                'Level',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 8.0),
                      // User info column

                      const SizedBox(width: 16.0),
                      // Sample text column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                ' Karama :',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                              CustomIconButton(
                                icon: Icons.toll_outlined,
                                text: "127",
                                onPressed: () {},
                                isActive: true,
                                iconColor: GraphicsColorConsts.green,
                                isSpace: true,
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                ' Posts :',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                              CustomIconButton(
                                icon: Icons.history_edu_outlined,
                                text: "12",
                                onPressed: () {},
                                isActive: true,
                                iconColor: GraphicsColorConsts.green,
                                isSpace: true,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              stretch: true,
              automaticallyImplyLeading: false,
              expandedHeight: 200.0,
              pinned: true,
              backgroundColor: GraphicsColorConsts.white,
              flexibleSpace: FlexibleSpaceBar(
                // title: const Text(
                //   'User Name',
                //   style: TextStyle(
                //     color: Colors.black,
                //   ),
                // ),
                background: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AssetConsts.imageAppBar2,
                        package: AssetConsts.package,
                      ), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Level',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Karma: XX | Coins: XX | Farm Points: XX',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return FeedWidget(
                    userName: 'User $index',
                    userLevel: 'Level $index',
                    feedText:
                        'This is the feed text for item $index. It can be longer if needed.',
                    likeCount: index * 2,
                    commentCount: index * 3,
                    onLikePressed: () {
                      // Handle like button press for this specific feed
                    },
                    onFeedTapped: () {
                      // Handle feed container tap for this specific feed
                    },
                  );
                },
                childCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
