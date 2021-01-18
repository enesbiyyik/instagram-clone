import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:instagram_clone/components/post.dart';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff000000),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                  child: Container(
                    height: 35,
                    child: Image.asset("assets/instagram_logo.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_box_outlined, color: Colors.white,), 
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(FontAwesome.heart_empty, color: Colors.white,), 
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(FontAwesome5.facebook_messenger, color: Colors.white,), 
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Post(),
                  Post(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}