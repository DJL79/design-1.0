import 'package:flutter/material.dart';
import 'utilities/size_config.dart';
import 'dart:ui';
import 'utilities/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';

class ScreenFive extends StatefulWidget {
  @override
  _ScreenFiveState createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  var textStyleBtn = TextStyle(fontSize: 26);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          topTitle,
          topMenuHighlighted,
          Expanded(
            child: Stack(
              children: <Widget>[
                imageWidgetTest,
                Positioned(
                    top: SizeConfig.safeBlockVertical * 30,
                    left: SizeConfig.safeBlockHorizontal * 20,
                    child: headerUnderImageTest),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




Widget imageWidgetTest = Column(
  children: <Widget>[
    Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        // width: SizeConfig.blockSizeHorizontal * 100,
        //  height: SizeConfig.safeBlockVertical * 30,

        decoration: BoxDecoration(
          border: Border.all(color: colorTestEdfes),
          borderRadius: BorderRadius.circular(15.0),
          color: colorlightgreythree,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 45),
              child: Container(
                height: SizeConfig.blockSizeVertical * 30,
                width: SizeConfig.blockSizeHorizontal * 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/face_greyBG.jpg'),
                  ),
                ),
              ),
            ),

//               Container(
//                 margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                 width: SizeConfig.blockSizeHorizontal * 100,
//                 height: SizeConfig.safeBlockVertical * 30,
//
//                 decoration: BoxDecoration(
//                   border: Border.all(color: colorTestEdfes),
//                   borderRadius: BorderRadius.circular(15.0),
//                   color: Colors.yellow,
//                 ),
//
//
//                 child: AutoSizeText('IMAGE GOES HERE',
//                   style: TextStyle(
//                       fontSize: 25.0,
//                       fontFamily: 'LoraReg',
//                       color: Colors.black
//                   ),),
//               ),

            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
//                              height: SizeConfig.safeBlockVertical * 10,
//                              width: SizeConfig.safeBlockHorizontal * 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        spreadRadius: 0,
                                        blurRadius: 3,
                                        offset: Offset(3, 3))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: AutoSizeText(
                                    "ABOUT",
                                    style: new TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'BigCaslonMedium',
                                      color: Colors.black,
                                    ),
                                    maxLines: 1,
                                    minFontSize: 16,
                                  ),
                                ),
                              ),
                            ),
//                               child: Container(
//                                  //height: SizeConfig.safeBlockVertical * 100,
//                                 width: SizeConfig.safeBlockHorizontal * 100,
//                                   decoration: BoxDecoration(
//                                   border: Border.all(color: colorTestEdfes),
//                                   borderRadius: BorderRadius.circular(15.0),
//                                   color: Colors.orange,
//                                 ),
//
//                               //  child: Text('sss'),
//
//                               ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
//                              height: SizeConfig.safeBlockVertical * 10,
//                              width: SizeConfig.safeBlockHorizontal * 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        spreadRadius: 0,
                                        blurRadius: 3,
                                        offset: Offset(3, 3))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: AutoSizeText(
                                    "COURSES",
                                    style: new TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'BigCaslonMedium',
                                      color: Colors.black,
                                    ),
                                    maxLines: 1,
                                    minFontSize: 16,
                                  ),
                                ),
                              ),
                            ),
//                            child: Container(
//                              // height: SizeConfig.safeBlockVertical * 100,
//                              width: SizeConfig.safeBlockHorizontal * 100,
//                              decoration: BoxDecoration(
//                                border: Border.all(color: colorTestEdfes),
//                                borderRadius: BorderRadius.circular(15.0),
//                                color: Colors.white,
//                              ),
//
//                              // child: Text('sss'),
//                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
//                              height: SizeConfig.safeBlockVertical * 10,
//                              width: SizeConfig.safeBlockHorizontal * 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      spreadRadius: 0,
                                      blurRadius: 3,
                                      offset: Offset(3, 3))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: AutoSizeText(
                                  "BOOKING",
                                  style: new TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'BigCaslonMedium',
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  minFontSize: 16,
                                ),
                              ),
                            ),
                          ),
//                          child: Container(
//                            height: SizeConfig.safeBlockVertical * 100,
//                            decoration: BoxDecoration(
//                              border: Border.all(color: colorTestEdfes),
//                              borderRadius: BorderRadius.circular(15.0),
//                              color: Colors.blue,
//                            ),
//
//                            //   child: Text('sss'),
//                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
//                              height: SizeConfig.safeBlockVertical * 10,
//                              width: SizeConfig.safeBlockHorizontal * 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      spreadRadius: 0,
                                      blurRadius: 3,
                                      offset: Offset(3, 3))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: AutoSizeText(
                                  "PRICES",
                                  style: new TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'BigCaslonMedium',
                                    color: Colors.black,
                                  ),
                                  maxLines: 1,
                                  minFontSize: 16,
                                ),
                              ),
                            ),
                          ),
//                          child: Container(
//                            height: SizeConfig.safeBlockVertical * 100,
//                            decoration: BoxDecoration(
//                              border: Border.all(color: colorTestEdfes),
//                              borderRadius: BorderRadius.circular(15.0),
//                              color: Colors.pink,
//                            ),
//
//                            //   child: Text('sss'),
//                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ],
);









Widget mainImageWidget = Padding(
    padding: EdgeInsets.all(15.0),
    child: Container(
      height: SizeConfig.blockSizeVertical * 30,
      width: SizeConfig.blockSizeHorizontal * 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/face_greyBG.jpg'),
        ),
      ),
    ));

Widget headerUnderImageTest = Padding(
  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: SizeConfig.blockSizeVertical * 8,
        width: SizeConfig.blockSizeHorizontal * 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(3, 3))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Flexible(
                flex: 3,
                child: AutoSizeText(
                  "Sevim Karagoz",
                  style: new TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'BigCaslonMedium',
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
            ),
            Container(
              child: Flexible(
                flex: 2,
                child: AutoSizeText(
                  "Aesthetician",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'BigCaslonMedium',
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget imageWidget = Expanded(
  flex: 1,
  child: Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    width: SizeConfig.blockSizeHorizontal * 100,
    //  height: SizeConfig.safeBlockVertical * 80,

    decoration: BoxDecoration(
      border: Border.all(color: colorTestEdfes),
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.grey,
    ),

    child: Align(
      alignment: Alignment.center,
      child: AutoSizeText(
        'IMAGE GOES HERE',
        style: TextStyle(
            fontSize: 25.0, fontFamily: 'LoraReg', color: Colors.black),
      ),
    ),
  ),
);

Widget firstWidgetTest = Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
    // width: SizeConfig.blockSizeHorizontal * 100,

    decoration: BoxDecoration(
      border: Border.all(color: colorTestEdfes),
      borderRadius: BorderRadius.circular(15.0),
      // color: Colors.grey,
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: SizeConfig.safeBlockVertical * 100,
            decoration: BoxDecoration(
              border: Border.all(color: colorTestEdfes),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.yellow,
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: colorTestEdfes),
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.yellow,
                    ),
//                        child: FittedBox(
//                            fit: BoxFit.fill,
//                            child: Text('ONE')),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: colorTestEdfes),
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.orange,
                    ),
//                         child: FittedBox(
//                            fit: BoxFit.fill,
//                            child: Text('TWO')),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: SizeConfig.safeBlockVertical * 100,
            decoration: BoxDecoration(
              border: Border.all(color: colorTestEdfes),
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.orange,
            ),

//            child: FittedBox(
//                fit: BoxFit.fill,
//                child: Text('THREE')),
          ),
        )
      ],
    ));

Widget firstWidget = Expanded(
  flex: 2,
  child: Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      // width: SizeConfig.blockSizeHorizontal * 100,

      decoration: BoxDecoration(
        border: Border.all(color: colorTestEdfes),
        borderRadius: BorderRadius.circular(15.0),
        // color: Colors.grey,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: SizeConfig.safeBlockVertical * 100,
              decoration: BoxDecoration(
                border: Border.all(color: colorTestEdfes),
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.yellow,
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: colorTestEdfes),
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.yellow,
                      ),
//                        child: FittedBox(
//                            fit: BoxFit.fill,
//                            child: Text('ONE')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: colorTestEdfes),
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.orange,
                      ),
//                         child: FittedBox(
//                            fit: BoxFit.fill,
//                            child: Text('TWO')),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: SizeConfig.safeBlockVertical * 100,
              decoration: BoxDecoration(
                border: Border.all(color: colorTestEdfes),
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.orange,
              ),

//            child: FittedBox(
//                fit: BoxFit.fill,
//                child: Text('THREE')),
            ),
          )
        ],
      )),
);

Widget backgroundWidget = Column(
  children: <Widget>[
    Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: SizeConfig.safeBlockVertical * 100,
        width: SizeConfig.safeBlockHorizontal * 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colorlightgreyfour,
        ),
      ),
    ))
  ],
);

Widget topTitle = Container(
  child: Column(
    children: <Widget>[
      Align(
        alignment: Alignment.center,
        child: SafeArea(
          child: AutoSizeText(
            "Sevim Karagoz",
            style: new TextStyle(
              fontSize: 28.0,
              color: Colors.black,
            ),
            maxLines: 1,
            minFontSize: 14,
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: AutoSizeText(
          "Aesthetician",
          style: new TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
          maxLines: 1,
          minFontSize: 14,
        ),
      ),
    ],
  ),
);

Widget topMenuHighlighted = Center(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              //   height: 50,

              child: Align(
                alignment: Alignment.center,
                child: AutoSizeText(
                  'HOME',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'BigCaslonMedium',
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              //     height: 50,

              child: Align(
                alignment: Alignment.center,
                child: AutoSizeText(
                  'SERVICES',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'BigCaslonMedium',
                      color: colorlightgreyfour),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              //   height: 50,
              child: Align(
                alignment: Alignment.center,
                child: AutoSizeText(
                  'CONTACT',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'BigCaslonMedium',
                      color: colorlightgreyfour),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);

//Widget backgroundWidget = Column(
//  children: <Widget>[
//    Expanded(
//
//        child:Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Container(
//
//            height: SizeConfig.safeBlockVertical * 100,
//            width: SizeConfig.safeBlockHorizontal * 100,
//
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(20.0),
//              color: colorlightgreyfour,
//            ),
//          ),
//        )
//
//    )
//
//  ],
//);

Widget buttonsExpanded = Container(
  child: Column(
    children: <Widget>[
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              //  constraints: BoxConstraints.expand(),
              //  margin: EdgeInsets.fromLTRB(0, 0, 25, 20),
//            height: SizeConfig.safeBlockVertical * 15,
//            width: SizeConfig.safeBlockHorizontal * 30,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: Offset(3, 3))
                  ]),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: AutoSizeText(
                    "ABOUT",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'BigCaslonMedium',
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    minFontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              //     margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//            height: SizeConfig.safeBlockVertical * 15,
//            width: SizeConfig.safeBlockHorizontal * 30,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: Offset(3, 3))
                  ]),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: AutoSizeText(
                    "BOOKING",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'BigCaslonMedium',
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    minFontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              //    margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
//            height: SizeConfig.safeBlockVertical * 15,
//            width: SizeConfig.safeBlockHorizontal * 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: Offset(3, 3))
                  ]),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: AutoSizeText(
                    "COURSES",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'BigCaslonMedium',
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    minFontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
//              height: SizeConfig.safeBlockVertical * 15,
//              width: SizeConfig.safeBlockHorizontal * 30,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: Offset(3, 3))
                  ]),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: AutoSizeText(
                    "PRICES",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'BigCaslonMedium',
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    minFontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      )
    ],
  ),
);

Widget gridButtons = Expanded(
    child: GridButton(
  // borderColor:colorlightBlue,
  //   borderWidth:5,
  onPressed: (dynamicval) {
    print('printed');
  },

  items: [
    [
      GridButtonItem(title: "Button", color: Colors.white, borderRadius: 30),
      GridButtonItem(title: "Button", color: Colors.white, borderRadius: 30),
    ],
    [
      GridButtonItem(title: "Button", color: Colors.white, borderRadius: 30),
      GridButtonItem(title: "Button", color: Colors.white, borderRadius: 30),
    ],
  ],
));

Widget headerUnderImage = Padding(
  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
  child: Column(
    children: <Widget>[
      Container(
        height: SizeConfig.blockSizeVertical * 9,
        width: SizeConfig.blockSizeHorizontal * 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(3, 3))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Flexible(
                flex: 3,
                child: AutoSizeText(
                  "Sevim Karagoz",
                  style: new TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'BigCaslonMedium',
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
            ),
            Container(
              child: Flexible(
                flex: 2,
                child: AutoSizeText(
                  "Aesthetician",
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'BigCaslonMedium',
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  minFontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
