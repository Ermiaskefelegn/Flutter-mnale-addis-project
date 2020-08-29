import 'package:flutter/material.dart';
import 'package:myapp2/appbar.dart';

class Playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomeAppbar(
          pagetitle: "Playlist",
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.playlist_add,
                      size: 40,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Add New Playlist",
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.album,
                      size: 80,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Best Amahric",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "155 musics",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.album,
                      size: 80,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "My Favorite Top 100",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "100 Musics",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
