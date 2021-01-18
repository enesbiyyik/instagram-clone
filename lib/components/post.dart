import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class Post extends StatefulWidget {
  final String userName;
  final String profilePhotoUrl;
  final String postImage;
  bool isLiked;
  Post({Key key, this.userName, this.profilePhotoUrl, this.postImage, this.isLiked = false}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.network("https://thispersondoesnotexist.com/image", fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  Text("username", style: TextStyle(fontFamily: "Instagram", color: Colors.white),),
                ],
              ),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: (){}, color: Colors.white)
            ],
          ),
          GestureDetector(
            onDoubleTap: (){
              setState(() {
                widget.isLiked = true;
              });
            },
            child: Image.network("https://thispersondoesnotexist.com/image"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(widget.isLiked ? FontAwesome.heart : FontAwesome.heart_empty), onPressed: (){
                    setState(() {
                      widget.isLiked ? widget.isLiked = false : widget.isLiked = true;
                    });
                  }, 
                    color: widget.isLiked ? Colors.red : Colors.white,
                  ),
                  IconButton(icon: new Image.asset("assets/comment.png", width: 23,), onPressed: (){}, color: Colors.white, ),
                  IconButton(icon: new Image.asset("assets/dm.png", width: 24,), onPressed: (){}, color: Colors.white,),
                ],
              ),
              IconButton(icon: Icon(FontAwesome.bookmark_empty), onPressed: (){}, color: Colors.white,),
            ],
          )
        ],
      ),
    );
  }
}