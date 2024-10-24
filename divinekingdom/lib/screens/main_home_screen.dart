import 'package:flutter/material.dart';
import 'package:divinekingdom/screens/all_videos.dart';
import 'package:divinekingdom/utilities/stickyheader.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("DK TV"),
            leading: Image.asset('images/logo.png'), // Replace with your logo
            floating: true,
            snap: true,
            pinned: false, // Set to false to hide the logo when scrolling
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _StickyHeaderDelegate(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeScreens(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const StickyHeader();
  }

  @override
  double get maxExtent => 60; // Set the height of the sticky header

  @override
  double get minExtent => 60; // Set the height of the sticky header

  @override
  bool shouldRebuild(_StickyHeaderDelegate oldDelegate) {
    return false;
  }
}
