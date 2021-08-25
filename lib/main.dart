import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:smooth_scroll_web/smooth_scroll_web.dart';

void main() => runApp(VideoPlayerApp());
const PrimaryColor = const Color(0xFFF2E9E4);
const SecondaryColor = const Color(0xff003049);

class VideoPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arrival project',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  ScrollController controller = ScrollController();

  Widget Header(context) {

  }

  Widget Body(context) {
    return new PreferredSize(
        preferredSize: Size.fromHeight(8000.0),
        child: ListView(

            controller: controller,
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            FutureBuilder(
                              future: _initializeVideoPlayerFuture,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  _controller.play();
                                  return VideoPlayer(_controller);
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            ),
                          ],
                        ),

                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: Material(
                        color: Color.fromRGBO(25, 9, 28, 0.8),
                        child: Column(children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset('assets/arrival.png',
                                                scale: 1.2)
                                          ]),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 75),
                                        child: SizedBox(
                                          width: 200,
                                          height: 65,
                                          child: Container(
                                            width: 200,
                                            height: 65,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: new Alignment(-1, 0),
                                                  end: new Alignment(1, 0),
                                                  colors: [
                                                    Color.fromRGBO(
                                                        147, 54, 253, 0.7),
                                                    Color.fromRGBO(
                                                        240, 80, 174, 0.7),
                                                  ],
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(25.0),
                                                  topLeft:
                                                      Radius.circular(25.0),
                                                  bottomRight:
                                                      Radius.circular(25.0),
                                                  bottomLeft:
                                                      Radius.circular(25.0),
                                                )),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return Colors
                                                            .transparent;
                                                      } else {
                                                        return Colors
                                                            .transparent;
                                                      } // Use the component's default.
                                                    },
                                                  ),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ))),
                                              onPressed: () {},
                                              child: Text(
                                                'Billetterie',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ))
                ],
              ),
            Container(
                      height: 650,
                      width: double.infinity,
                      child: Material(
                          color: Color.fromRGBO(25, 9, 28, 1),
                          child: Row(children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 0),
                                child: Material(
                                  color: Colors.black,

                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: new Alignment(0, -1),
                                          end: new Alignment(0, 1),
                                          colors: [
                                            Color.fromRGBO(25, 9, 28, 1),
                                            Color.fromRGBO(147, 54, 253, 0.7),
                                            Color.fromRGBO(240, 80, 174, 0.7),
                                          ],
                                        ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width ,
                                          child: Align(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 0),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 50),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      SelectableText(
                                                        "ARRIVAL ? Qu'est ce que c'est ? 🤔",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 35,
                                                            color: PrimaryColor,
                                                            shadows: <Shadow>[
                                                              Shadow(
                                                                offset:
                                                                    Offset(1, 0),
                                                                color: Color
                                                                    .fromARGB(200,
                                                                        0, 0, 0),
                                                              ),
                                                            ]),
                                                      ),
                                                      SelectableText(
                                                        '\nARRIVAL est le nouvel évènement estival destiné aux étudiants en quête d’une expérience unique : une soirée unique en plein Paris ! ',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20,
                                                            color: PrimaryColor),
                                                      ),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 35),
                                                            child: SizedBox(
                                                              width: 135,
                                                              height: 50,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          begin: new Alignment(
                                                                              -1,
                                                                              0),
                                                                          end: new Alignment(
                                                                              1,
                                                                              0),
                                                                          colors: [
                                                                            Color.fromRGBO(
                                                                                147,
                                                                                54,
                                                                                253,
                                                                                0.7),
                                                                            Color.fromRGBO(
                                                                                240,
                                                                                80,
                                                                                174,
                                                                                0.7),
                                                                          ],
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .only(
                                                                          topRight:
                                                                              Radius.circular(25.0),
                                                                          topLeft:
                                                                              Radius.circular(25.0),
                                                                          bottomRight:
                                                                              Radius.circular(25.0),
                                                                          bottomLeft:
                                                                              Radius.circular(25.0),
                                                                        )),
                                                                child:
                                                                    ElevatedButton(
                                                                  style:
                                                                      ButtonStyle(
                                                                          backgroundColor:
                                                                              MaterialStateProperty.resolveWith<
                                                                                  Color>(
                                                                            (Set<MaterialState>
                                                                                states) {
                                                                              if (states.contains(MaterialState.pressed)) {
                                                                                return Colors.transparent;
                                                                              } else {
                                                                                return Colors.transparent;
                                                                              } // Use the component's default.
                                                                            },
                                                                          ),
                                                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(50.0),
                                                                          ))),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Text(
                                                                    'Billetterie',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        fontSize:
                                                                            20,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          )),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                          child: Align(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 0),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.people_outlined,
                                                        color: PrimaryColor,
                                                        size: 300.0),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]))),
              PreferredSize(
                  preferredSize: Size.fromHeight(650.0),
                  child: Container(
                      height: 650,
                      width: double.infinity,
                      child: Material(
                          color: Color.fromRGBO(25, 9, 28, 1),
                          child: Row(children: [
                            Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width,
                                  child: Align(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.data_usage_outlined,
                                                color: Color.fromRGBO(
                                                    160, 53, 162, 0.7),
                                                size: 300.0),
                                          ]),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width,
                                  child: Align(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: 0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SelectableText(
                                              '\nOÙ 📍 ET QUAND 📆 ? ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 35,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  shadows: <Shadow>[
                                                    Shadow(
                                                      offset: Offset(1, 0),
                                                      color: Color.fromARGB(
                                                          200, 0, 0, 0),
                                                    ),
                                                  ]),
                                            ),
                                            SelectableText(
                                              '\nVendredi 23 octobre \n\n Adresse : 33 Avenue de la Porte d’Aubervilliers, 75018 Paris ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1)),
                                            ),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 35),
                                                  child: SizedBox(
                                                    width: 135,
                                                    height: 50,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            begin:
                                                                new Alignment(
                                                                    -1, 0),
                                                            end: new Alignment(
                                                                1, 0),
                                                            colors: [
                                                              Color.fromRGBO(
                                                                  147,
                                                                  54,
                                                                  253,
                                                                  0.7),
                                                              Color.fromRGBO(
                                                                  240,
                                                                  80,
                                                                  174,
                                                                  0.7),
                                                            ],
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    25.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    25.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    25.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    25.0),
                                                          )),
                                                      child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .resolveWith<
                                                                        Color>(
                                                              (Set<MaterialState>
                                                                  states) {
                                                                if (states.contains(
                                                                    MaterialState
                                                                        .pressed)) {
                                                                  return Colors
                                                                      .transparent;
                                                                } else {
                                                                  return Colors
                                                                      .transparent;
                                                                } // Use the component's default.
                                                              },
                                                            ),
                                                            shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ))),
                                                        onPressed: () {},
                                                        child: Text(
                                                          'Billetterie',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 20,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ])))),
           Container(
                      height: 115,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.black))),
                      child: Material(
                        color: Color.fromRGBO(25, 9, 28, 1),
                        child: Align(
                          alignment: Alignment.center,
                        ),
                      )),
             Container(
                      height: 115,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.black))),
                      child: Material(
                        color: Color.fromRGBO(25, 9, 28, 0.8),
                        child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0),
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [


                                 Padding(
                                   padding: const EdgeInsets.all(16.0),
                                   child: SelectableText(
                                              'Billeterie',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                  color: PrimaryColor),
                                            ),
                                 ),


                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: SelectableText(
                                          'Contact',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: PrimaryColor),
                                        ),
                                      ),
                                    ]),
                              ),
                            )),
                      )),
              PreferredSize(
                  preferredSize: Size.fromHeight(650.0),
                  child: Container(
                      height: 165,
                      width: double.infinity,
                      child: Material(
                          color: Color.fromRGBO(25, 9, 28, 0.8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SelectableText(
                                  'Copyright \u00a9 2021, ARRIVAL. Tous droits réservés',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )))),
            ]));


  }

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/test.mp4');

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 9, 28, 0.8),
      appBar: Header(context),
      body: SmoothScrollWeb(
        child: Body(context),
        controller: controller,

      ),

    );

  }
}
