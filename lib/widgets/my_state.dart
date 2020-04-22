import 'package:flutter/material.dart';
import 'package:wave_progress_widget/wave_progress_widget.dart';
import 'package:wic/widgets/my_header.dart';
import 'package:wic/widgets/counter.dart';
import 'package:wic/constant.dart';


class MyState extends StatefulWidget {
  @override
  _MyStateState createState() => new _MyStateState();
}

class _MyStateState extends State<MyState> {
  final controller = ScrollController();
  var _progress = 50.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(children: <Widget>[
        ClipPath(
        clipper: MyClipper(),
        child: Container(
          child: Stack(alignment: Alignment(2, 0.5 ),children: <Widget>[Text("jdsgfjdsgfsdl")],),
          padding: EdgeInsets.only(left: 40, top: 50, right: 20),
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFF777777),
              ],
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/virus.png"), alignment: Alignment(-2, -0.5 )
            ),
          ),
        ),

      ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  WaveProgress(300.0, Colors.green, Colors.green, _progress),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'You stell good',
                    style: TextStyle(color: Colors.green, fontSize: 40.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 110,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Case Update\n",
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: "Newest update March 28",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See details",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Counter(
                  color: kInfectedColor,
                  number: 1046,
                  title: "Infected",
                ),
                Counter(
                  color: kDeathColor,
                  number: 87,
                  title: "Deaths",
                ),
                Counter(
                  color: kRecovercolor,
                  number: 46,
                  title: "Recovered",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
