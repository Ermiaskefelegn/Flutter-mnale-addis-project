import 'package:flutter/material.dart';
import 'package:myapp2/appbar.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppbar(
        pagetitle: "Now Playing",
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: MediaQuery.of(context).size.height / 2.1,
              color: Colors.black,
              child: Image.asset("assets/IMG_3848.JPG")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 10),
                child: Text("1:55"),
              ),
              Container(
                color: Colors.grey,
                height: 5,
                width: MediaQuery.of(context).size.height / 2.7,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 20),
                child: Text("3:55"),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Center(child: Text("Mikael Track 7: የፍቅር ትንታ"))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                      icon: Icon(
                        Icons.fast_rewind,
                        size: 40,
                      ),
                      onPressed: () {})),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        size: 40,
                      ),
                      onPressed: () {})),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                      icon: Icon(
                        Icons.fast_forward,
                        size: 40,
                      ),
                      onPressed: () {})),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: IconButton(
                        icon: Icon(
                          Icons.volume_down,
                        ),
                        onPressed: () {})),
                Container(
                    child: SliderTheme(
                        data: SliderThemeData(
                            thumbColor: Colors.green,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 6)),
                        child: Slider(
                            value: _value,
                            min: 0,
                            max: 100,
                            onChanged: (val) {
                              setState(() {
                                _value = val;
                              });
                            }))),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: IconButton(
                        icon: Icon(
                          Icons.volume_up,
                        ),
                        onPressed: () {}))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Repeat",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Shuffle", style: TextStyle(color: Colors.red))),
            ],
          ),
        ],
      ),
    );
  }
}
