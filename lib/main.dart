import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:smooth_scroll_web/smooth_scroll_web.dart';

void main() => runApp(VideoPlayerApp());
const PrimaryColor = const Color.fromRGBO(255, 255, 255,1);
const SecondaryColor = const Color.fromRGBO(240, 80, 174, 1);

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

  Widget Header(context) {}

  Widget Body(context) {
    return Material(
      color: Color.fromRGBO(25, 9, 28, 1),
      child: new ListView(controller: controller, children: [
         Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        _controller.play();
                        return SizedBox.expand(
                            child: FittedBox(
                                fit: BoxFit.cover,
                                child: SizedBox(
                                    width: _controller.value.size?.width ?? 0,
                                    height: _controller.value.size?.height ?? 0,
                                    child: VideoPlayer(_controller))));
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Color.fromRGBO(240, 80, 174, 0.7))),
                        );
                      }
                    },
                  ),
                ),
                Material(
                  color: Color.fromRGBO(25, 9, 28, 0.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 500,
                          child: Image.asset('assets/arrival.png', scale: 1.2)),
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
                                      Color.fromRGBO(147, 54, 253, 0.7),
                                      Color.fromRGBO(240, 80, 174, 0.7),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states
                                              .contains(MaterialState.pressed)) {
                                            return Colors.transparent;
                                          } else {
                                            return Colors.transparent;
                                          } // Use the component's default.
                                        },
                                      ),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25.0),
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
                )
              ],
            ),
          ),

        Container(
          height: 650,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: new Alignment(0, -1),
              end: new Alignment(0, 1),
              colors: [
                Color.fromRGBO(25, 9, 28, 0.8),
                Color.fromRGBO(147, 54, 253, 1),
                Color.fromRGBO(240, 80, 174, 1),
                Color.fromRGBO(25, 9, 28, 1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                "ARRIVAL ? Qu'est ce que c'est ? 🤔",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: PrimaryColor,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 0),
                        color: Color.fromARGB(200, 0, 0, 0),
                      ),
                    ]),
              ),
              SelectableText(
                '\nARRIVAL est le nouvel évènement estival destiné aux étudiants en quête d’une expérience unique : une soirée unique en plein Paris ! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: PrimaryColor),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35),
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
                          Color.fromRGBO(147, 54, 253, 0.7),
                          Color.fromRGBO(240, 80, 174, 0.7),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.transparent;
                              } else {
                                return Colors.transparent;
                              } // Use the component's default.
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
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
              ),
              Icon(Icons.people_outlined, color: PrimaryColor, size: 300.0),
            ],
          ),
        ),
        Container(
          height: 650,
          width: MediaQuery.of(context).size.width,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                "OÙ 📍 ET QUAND 📆 ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: PrimaryColor,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 0),
                        color: Color.fromARGB(200, 0, 0, 0),
                      ),
                    ]),
              ),
              SelectableText(
                '\nVendredi 23 octobre \n Adresse: 33 Avenue de la Porte d\'Aubervilliers, 75018 Paris ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: PrimaryColor),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35),
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
                          Color.fromRGBO(147, 54, 253, 0.7),
                          Color.fromRGBO(240, 80, 174, 0.7),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.transparent;
                              } else {
                                return Colors.transparent;
                              } // Use the component's default.
                            },
                          ),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
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
              ),
              Icon(Icons.remove_red_eye_outlined , color: PrimaryColor, size: 300.0),
            ],
          ),
        ),
        Container(
            height: 115,
            width: double.infinity,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1.0, color: Colors.black))),
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
                border:
                    Border(bottom: BorderSide(width: 1.0, color: Colors.black))),
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
        Container(
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
                ))),
      ]),
    );
  }

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/test.mp4');

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);

    WidgetsBinding.instance.addPostFrameCallback((_) {

      _controller.setVolume(0);

      _controller.play();
      _controller.setPlaybackSpeed(0.75);
    });
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
