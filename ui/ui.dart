import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Myb1() {
    print("Everything Is Connected...");
  }
Myb2() {
     print("Camera is Clicked");
}

myapp() {
  var mybody = Container(
    // color: Colors.red,
    //width: 500,
    //height: 500,
    alignment: Alignment.bottomCenter,
    child: Text(
      'The Beginning is the End & The End is the Beginning',
      style: TextStyle(
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://raw.githubusercontent.com/Akash-droid24/dark/master/d1.jpg',
          ),
        ),
              color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 5,
          color: Colors.grey.shade500,
        )),
  );
  var block = Icon(Icons.burst_mode);
  var camera = Icon(Icons.camera);

var mybutton1 = IconButton(
    icon: block,
    onPressed: Myb1,
  );
  var mybutton2 = IconButton(
    icon: camera,
    onPressed: Myb2(),
  );
var myhome = Scaffold(
    appBar: AppBar(
      title: Text('DARK'),
      backgroundColor: Colors.black,
       actions: <Widget>[
      mybutton1,
      camera,
    ],
    ),
    body: Center(child: mybody),
  );

  return MaterialApp(home: myhome);
}
