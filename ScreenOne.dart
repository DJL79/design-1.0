
import 'package:flutter/material.dart';
import 'utilities/size_config.dart';
import 'dart:ui';
import 'utilities/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';


class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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


                Positioned.fill(
                    child: backgroundWidget),

                mainImageWidget,

                 Positioned(
                  top: SizeConfig.safeBlockVertical * 30,
                   height: SizeConfig.safeBlockVertical * 100,
                     //work out width of container (70) so thats 15 either side.
                    left: SizeConfig.safeBlockHorizontal * 15,
                    child: headerUnderImage),
              ],



            ),
          )

        ],




      ),
    );
  }
}

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


Widget topMenuHighlighted =  Center(

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
                  child: AutoSizeText('HOME',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'BigCaslonMedium',
                        color: Colors.black
                    ),),
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
                  child: AutoSizeText('SERVICES',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'BigCaslonMedium',
                        color: colorlightgreyfour
                    ),),
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
                  child: AutoSizeText('CONTACT',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'BigCaslonMedium',
                        color: colorlightgreyfour
                    ),),
                ),

              ),
            ),
          ),
        ],
      ),
    ),
  );




Widget backgroundWidget = Column(
     children: <Widget>[
      Expanded(

            child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

            height: SizeConfig.safeBlockVertical * 100,
            width: SizeConfig.safeBlockHorizontal * 100,

            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: colorlightgreyfour,
      ),
      ),
      )

      )

],
);





Widget mainImageWidget = Padding(
    padding: EdgeInsets.all(15.0),
    child: Container(

      height: SizeConfig.blockSizeVertical * 30,
      width: SizeConfig.blockSizeHorizontal * 100,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image (

          fit: BoxFit.cover,
          image: AssetImage('assets/images/face_greyBG.jpg'),
        ),
      ),


    )

);






Widget headerUnderImage = Padding(

  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),

  child: Column(
    children: <Widget>[
      Container(

        height: SizeConfig.blockSizeVertical * 8,
        width: SizeConfig.blockSizeHorizontal * 70,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow:[
              BoxShadow(color:Colors.grey.withOpacity(0.8),
                  spreadRadius:0,
                  blurRadius:3,
                  offset:Offset(3,3))
            ]

        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(

                child: AutoSizeText(
                  "Sevim Karagoz",
                  style: new TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'BigCaslonMedium',
                    color: Colors.black,

                  ),
                  maxLines: 1,
                  minFontSize: 14,
                ),
              ),
            ),

//              AutoSizeText(
//                'The text to display',
//                style: TextStyle(fontSize: 20),
//                maxLines: 2,
//              )

            Container(
              child: AutoSizeText(
                "Aesthetician",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'BigCaslonMedium',
                  color: Colors.black,
                ),
                maxLines: 1,
                minFontSize: 14,
              ),
            ),


          ],

        ),


      ),

      SizedBox(height:SizeConfig.safeBlockVertical * 2,),

      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 25, 20),
            height: SizeConfig.safeBlockVertical * 15,
            width: SizeConfig.safeBlockHorizontal * 30,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(color:Colors.grey.withOpacity(0.8),
                      spreadRadius:0,
                      blurRadius:3,
                      offset:Offset(3,3))
                ]
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: AutoSizeText(
                "ABOUT",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'BigCaslonMedium',
                  color: Colors.black,
                ),
                maxLines: 1,
                minFontSize: 16,
              ),),
            ),

          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            height: SizeConfig.safeBlockVertical * 15,
            width: SizeConfig.safeBlockHorizontal * 30,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(color:Colors.grey.withOpacity(0.8),
                      spreadRadius:0,
                      blurRadius:3,
                      offset:Offset(3,3))
                ]
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: AutoSizeText(
                "BOOKING",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'BigCaslonMedium',
                  color: Colors.black,
                ),
                maxLines: 1,
                minFontSize: 14,
              ),),
            ),
          )
        ],
      ),

      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
            height: SizeConfig.safeBlockVertical * 15,
            width: SizeConfig.safeBlockHorizontal * 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(color:Colors.grey.withOpacity(0.8),
                      spreadRadius:0,
                      blurRadius:3,
                      offset:Offset(3,3))
                ]
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: AutoSizeText(
                "COURSES",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'BigCaslonMedium',
                  color: Colors.black,
                ),
                maxLines: 1,
                minFontSize: 14,
              ),),
            ),

          ),
          Container(
            height: SizeConfig.safeBlockVertical * 15,
            width: SizeConfig.safeBlockHorizontal * 30,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(color:Colors.grey.withOpacity(0.8),
                      spreadRadius:0,
                      blurRadius:3,
                      offset:Offset(3,3))
                ]
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: AutoSizeText(
                "PRICES",
                style: new TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'BigCaslonMedium',
                  color: Colors.black,
                ),
                maxLines: 1,
                minFontSize: 14,
              ),),
            ),
          )
        ],
      )

    ],
  ),

);


