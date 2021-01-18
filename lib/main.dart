import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:instagram_clone/screens/explore.dart';
import 'package:instagram_clone/screens/feed.dart';
import 'package:instagram_clone/screens/profile.dart';
import 'package:instagram_clone/screens/reels.dart';
import 'package:instagram_clone/screens/shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstagramClone(),
    );
  }
}

class InstagramClone extends StatefulWidget {
  @override
  _InstagramCloneState createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> {

  //* List for bottomNavBar screens
  List<Widget> allScreens;

  //* Page Storage Keys
  var feedKey = PageStorageKey("feedKey");
  var exploreKey = PageStorageKey("exploreKey");
  var reelsKey = PageStorageKey("reelsKey");
  var shopKey = PageStorageKey("shopKey");
  var profileKey = PageStorageKey("profileKey");

  //* Objects from our screens
  Feed feedScreen;
  Explore exploreScreen;
  Reels reelsScreen;
  Shop shopScreen;
  Profile profileScreen;

  //* Our bottomNavBars current index
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    //* Initializing our screens and screen list
    feedScreen = Feed(key: feedKey);
    exploreScreen = Explore(key: exploreKey);
    reelsScreen = Reels(key: reelsKey);
    shopScreen = Shop(key: shopKey);
    profileScreen = Profile(key: profileKey);
    allScreens = [feedScreen, exploreScreen, reelsScreen, shopScreen, profileScreen];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xff000000),
        iconSize: 22,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Elusive.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FontAwesome.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Iconic.video), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(FontAwesome5.shopping_bag), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(FontAwesome5.circle), label: "Profile"),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: allScreens[_currentIndex],
    );
  }
}
