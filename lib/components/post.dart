import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  Post({Key key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
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
                    child: Image.network("https://www.otokokpit.com/wp-content/uploads/2019/04/2020-yeni-nissan-gt-r-nismo-1.jpg", fit: BoxFit.cover,),
                  ),
                ),
              ),
            ],
          ),
          Image.network(""),
          Row(
            children: [
              Row(),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: null),
            ],
          )
        ],
      ),
    );
  }
}