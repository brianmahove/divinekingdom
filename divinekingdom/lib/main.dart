import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:divinekingdom/screens/home_screen.dart';
import 'package:divinekingdom/screens/posts_screen.dart';
import 'package:divinekingdom/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      //home: const MainPage(),
      theme: ThemeData(fontFamily: 'Metropolis'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController(initialPage: 2);
  int _currentIndex = 2; // Set initial index to 2 (Live Stream)

  final List<Widget> _pages = [
    const HomeScreen(),
    const PostPage(),
    const Center(child: Text('Live Stream Page')),
    const Center(child: Text('Community Page')),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        physics: const NeverScrollableScrollPhysics(), // Disable swiping
        children: _pages,
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.reactCircle,
        initialActiveIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _pageController
                .jumpToPage(index); // Update the page without animation
          });
        },
        items: const [
          TabItem(icon: Icons.video_library, title: 'Discover'),
          TabItem(icon: Icons.post_add, title: 'Posts'),
          TabItem(icon: Icons.live_tv, title: 'Live Stream'),
          TabItem(icon: Icons.people, title: 'Community'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}
