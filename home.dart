

import 'package:design10/ScreenFive.dart';
import 'package:design10/ScreenFour.dart';
import 'package:design10/ScreenThree.dart';
import 'package:design10/ScreenTwo.dart';
import 'package:flutter/material.dart';
import 'package:design10/ScreenOne.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {


  int _currentIndex = 0;
  final List<Widget> _children = [

    ScreenFive(),
    ScreenFour(),
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),

  ];

  @override
  Widget build(BuildContext context) {
  //  splashScreenWidget(context);
    return Scaffold(




      bottomNavigationBar: BottomNavigationBar(
        //  type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('1'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('2'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              title: Text('3')
          ),
//          new BottomNavigationBarItem(
//              icon: Icon(Icons.contact_mail),
//              title: Text('4')
//          ),
//          new BottomNavigationBarItem(
//              icon: Icon(Icons.contact_mail),
//              title: Text('5')
//          ),



//          new BottomNavigationBarItem(
//              icon: Icon(Icons.gamepad),
//              title: Text('extra')
//          ),
        ],
      ),




//      appBar: AppBar(
//        // title: Text(""), backgroundColor: remoteConfig.getString(topbarcolour)),
//          title: Text(""), backgroundColor: Colors.transparent, elevation: 0.0,),

      // SIDE DRAWER
//      drawer: Drawer(
//          child: ListView(
//            children: <Widget>[
//              ListTile(
//                // leading: CircleAvatar(backgroundImage:  NetworkImage("https://i1.wp.com/codesundar.com/wp-content/uploads/2019/08/cropped-codesundar-favicon.png")),
//                title: Text("birthwell"),
//                subtitle: Text("info@birthwell.co.uk"),
//              ),
//              ListTile(leading: Icon(Icons.home), title: Text("Home")),
//              ListTile(leading: Icon(Icons.grid_on), title: Text("Products")),
//              ListTile(leading: Icon(Icons.contacts), title: Text("Contact Us")),
//            ],
//          )),



      body: _children[_currentIndex],


    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      print(index);
    });
  }
}

