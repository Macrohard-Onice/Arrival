// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'secondscreen.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

void main() => runApp(MyApp());

const PrimaryColor = const Color(0xFFF2E9E4);
const SecondaryColor = const Color(0xff003049);





class Firstroute extends StatelessWidget {
  ScrollController controller = ScrollController();

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color.fromRGBO(147, 54, 253, 1), Color.fromRGBO(240, 80, 174, 1)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


  Widget Header(context) {


    return PreferredSize(


        preferredSize: Size.fromHeight(100.0),


        child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 0,
                  offset: Offset(0,-50), // changes position of shadow
                ),
              ],
            ),

            child: Material(
                color: Color.fromRGBO(25, 9, 28, 1),




                child: Stack(

                    children: [




                      Align (

                          alignment: Alignment.center,

                            child: Container(
                              width: MediaQuery.of(context).size.width ,
                              child: Row (
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [


                                    Padding(
                                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.05),
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,

                                        child: GestureDetector(
                                          onTap:() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => SecondRoute()),
                                            );
                                          },
                                          child: Text('Accueil',
                                            style: TextStyle( fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),


                                    Padding(
                                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.05),
                                      child: SelectableText('Billetterie',
                                        style: TextStyle( fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white
                                        ),
                                      ),
                                    ),





                                  ]
                              ),
                            ),

                      ),





                      Align (

                          alignment: Alignment.centerRight,

                          child: Padding(

                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.12),

                            child: Column (
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(
                                    Icons.search,
                                    color: SecondaryColor,
                                    size: 24.0,)
                                ]
                            ),
                          )
                      ),

                      Align (

                          alignment: Alignment.centerRight,

                          child: Padding(

                              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.12+35),




                              child: Container(
                                width: 115,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Rechercher...'
                                  ),
                                ),
                              )

                          )
                      ),
                    ]
                )
            )
        )
    )
    ;}

  Widget Body(context) {


    return new PreferredSize(

        preferredSize: Size.fromHeight(8000.0),

        child: ListView(
            physics: NeverScrollableScrollPhysics(),
            controller: controller,

            children:[





              PreferredSize(

                preferredSize: Size.fromHeight(650.0),

                child: Container(
                    height: 700,
                    width: double.infinity,


                    child: Material(
                      color: Color.fromRGBO(25, 9, 28, 1),




                      child: Stack(

                          children: [




                            Align (
                                alignment: Alignment.centerLeft,

                                child: Padding(
                                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.08),

                                  child: Container(
                                    width: MediaQuery.of(context).size.width *0.4,

                                    child: Column (
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [



                                        Align(
                                          alignment: Alignment.center,

                                          child: SelectableText('ARRIVAL', textAlign: TextAlign.center,
                                            style: TextStyle(  letterSpacing: 2.0, fontWeight: FontWeight.w600, fontSize: 100, color: Colors.white,
                                                shadows: <Shadow>[
                                                  Shadow(
                                                    offset: Offset(0, 0),
                                                    blurRadius: 0,
                                                    color: Color.fromARGB(200, 0, 0, 0),
                                                  ),
                                                ]
                                            ),
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(left: 10, top:0,right:115.0,bottom:0),
                                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                                          child: Align(
                                            alignment: Alignment.centerRight,

                                            child: SelectableText('Powered by HiCards', textAlign: TextAlign.center,
                                              style: TextStyle( fontWeight: FontWeight.w500, fontSize: 16,  color: Color.fromRGBO(160, 53, 162, 1),
                                              ),
                                            ),
                                          ),
                                        ),




                                        Align(
                                            alignment: Alignment.center,

                                            child: Padding(
                                              padding: EdgeInsets.only(top: 65),
                                              child: SizedBox(
                                                width:150,
                                                height: 45,

                                                child: Container(
                                                  decoration:  BoxDecoration(
                                                      gradient: LinearGradient(
                                                        begin: new Alignment(-1, 0),
                                                        end: new Alignment(1, 0),
                                                        colors: [

                                                          Color.fromRGBO(147, 54, 253, 0.7),
                                                          Color.fromRGBO(240, 80, 174, 0.7),
                                                        ],
                                                      ),
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(25.0),
                                                        topLeft: Radius.circular(25.0),
                                                        bottomRight: Radius.circular(25.0),
                                                        bottomLeft: Radius.circular(25.0),
                                                      )
                                                  ),
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                              (Set<MaterialState> states) {
                                                            if (states.contains(MaterialState.pressed)) {
                                                              return Colors.transparent;
                                                            }
                                                            else { return Colors.transparent; } // Use the component's default.
                                                          },
                                                        ),
                                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(50.0),
                                                            )
                                                        )
                                                    ),
                                                    onPressed:() {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => SecondRoute()),
                                                      );
                                                    },


                                                    child: Text('Billetterie', textAlign: TextAlign.center,
                                                      style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white
                                                      ),
                                                    ),


                                                  ),
                                                ),
                                              ),
                                            )
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(top: 50),
                                          child: Align(
                                            alignment: Alignment.center,

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,

                                              children: [


                                                SelectableText(' ',
                                                  style: TextStyle( fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white
                                                  ),
                                                ),

                                                Padding(
                                                  padding: EdgeInsets.only(right: 15),
                                                  child: Padding(
                                                      padding: EdgeInsets.only(left: 15),

                                                      child: Row(
                                                          children: [

                                                            SelectableText(' ',
                                                              style: TextStyle( fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white
                                                              ),
                                                            ),
                                                          ]

                                                      )
                                                  ),
                                                ),


                                                SelectableText(' ',
                                                  style: TextStyle( fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                )
                            ),






                            Align (

                                alignment: Alignment.centerRight,

                                child: Padding(

                                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.08),

                                  child: Container(
                                    width: MediaQuery.of(context).size.width *0.4,
                                    child: Column (
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [
                                          Image.asset('assets/arrival.png', scale: 1.2)
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ]
                      ),
                    )
                ),
              ),







              PreferredSize(

                  preferredSize: Size.fromHeight(500.0),

                  child: Container(
                      height: 500,
                      width: double.infinity,


                      child: Material(
                          color: Color.fromRGBO(25, 9, 28, 1),





                          child: Row(

                              children: [


                                Container(
                                  width: MediaQuery.of(context).size.width *0.95,


                                  child: Padding(
                                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.05),
                                    child: Material(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(25.0),
                                            topLeft: Radius.circular(25.0),
                                            bottomRight: Radius.circular(25.0),
                                            bottomLeft: Radius.circular(25.0),
                                          )),
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
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(25.0),
                                              topLeft: Radius.circular(25.0),
                                              bottomRight: Radius.circular(25.0),
                                              bottomLeft: Radius.circular(25.0),
                                            )
                                        ),
                                        child: Row(
                                          children: [



                                            Container(

                                              width: MediaQuery.of(context).size.width *0.45,
                                              child: Align(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.05),
                                                  child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,

                                                      children: [


                                                        SelectableText("ARRIVAL ? Qu'est ce que c'est ? 🤔", textAlign: TextAlign.center,
                                                          style: TextStyle( fontWeight: FontWeight.w500, fontSize: 35,color: PrimaryColor, shadows: <Shadow>[
                                                            Shadow(
                                                              offset: Offset(1, 0),
                                                              color: Color.fromARGB(200, 0, 0, 0),
                                                            ),
                                                          ]
                                                          ),
                                                        ),


                                                        SelectableText('\nARRIVAL est le nouvel évènement estival destiné aux étudiants en quête d’une expérience unique : une soirée unique en plein Paris ! ', textAlign: TextAlign.center,
                                                          style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20, color: PrimaryColor

                                                          ),
                                                        ),



                                                        Align(
                                                            alignment: Alignment.center,
                                                            child: Padding(
                                                              padding: EdgeInsets.only(top: 35),
                                                              child: SizedBox(
                                                                width:135,
                                                                height: 50,
                                                                child: Container(
                                                                  decoration:  BoxDecoration(
                                                                      gradient: LinearGradient(
                                                                        begin: new Alignment(-1, 0),
                                                                        end: new Alignment(1, 0),
                                                                        colors: [

                                                                          Color.fromRGBO(147, 54, 253, 0.7),
                                                                          Color.fromRGBO(240, 80, 174, 0.7),
                                                                        ],
                                                                      ),
                                                                          borderRadius: BorderRadius.only(
                                                                          topRight: Radius.circular(25.0),
                                                                          topLeft: Radius.circular(25.0),
                                                                          bottomRight: Radius.circular(25.0),
                                                                          bottomLeft: Radius.circular(25.0),
                                                                          )
                                                                  ),
                                                                  child: ElevatedButton(
                                                                    style: ButtonStyle(
                                                                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                                              (Set<MaterialState> states) {
                                                                            if (states.contains(MaterialState.pressed)) {
                                                                              return Colors.transparent;
                                                                            }
                                                                            else { return Colors.transparent; } // Use the component's default.
                                                                          },
                                                                        ),
                                                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                            RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(50.0),
                                                                            )
                                                                        )
                                                                    ),
                                                                    onPressed:() {
                                                                      Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(builder: (context) => SecondRoute()),
                                                                      );
                                                                    },


                                                                      child: Text('Billetterie', textAlign: TextAlign.center,
                                                                        style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white
                                                                        ),
                                                                      ),


                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                        ),



                                                      ]
                                                  ),
                                                ),
                                              ),
                                            ),


                                            Container(
                                              width: MediaQuery.of(context).size.width *0.45,

                                              child: Align(
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.05),
                                                  child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,

                                                      children: [Icon(
                                                          Icons.people_outlined,
                                                          color: PrimaryColor,
                                                          size: 300.0),



                                                      ]
                                                  ),
                                                ),
                                              ),
                                            ),



                                          ],


                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ]
                          )
                      )
                  )
              ),

              PreferredSize(

                  preferredSize: Size.fromHeight(650.0),

                  child: Container(
                      height: 500,
                      width: double.infinity,


                      child: Material(
                          color: Color.fromRGBO(25, 9, 28, 1),




                          child: Row(

                              children: [


                                      Row(
                                        children: [

                                          Container(
                                            width: MediaQuery.of(context).size.width *0.5,
                                            child: Align(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.05),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,

                                                    children: [Icon(
                                                        Icons.data_usage_outlined,
                                                        color: Color.fromRGBO(160, 53, 162, 0.7),
                                                        size: 300.0),



                                                    ]
                                                ),
                                              ),
                                            ),
                                          ),


                                          Container(
                                            width: MediaQuery.of(context).size.width *0.5,
                                            child: Align(
                                              child: Padding(
                                                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.05),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,

                                                    children: [


                                                      SelectableText('\nOÙ 📍 ET QUAND 📆 ? ', textAlign: TextAlign.center,
                                                        style: TextStyle( fontWeight: FontWeight.w500, fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1), shadows: <Shadow>[
                                                          Shadow(
                                                            offset: Offset(1, 0),
                                                            color: Color.fromARGB(200, 0, 0, 0),
                                                          ),
                                                        ]
                                                        ),
                                                      ),


                                                      SelectableText('\nVendredi 23 octobre \n\n Adresse : 33 Avenue de la Porte d’Aubervilliers, 75018 Paris ', textAlign: TextAlign.center,
                                                        style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1)

                                                        ),
                                                      ),



                                                      Align(
                                                          alignment: Alignment.center,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(top: 35),
                                                            child: SizedBox(
                                                              width:135,
                                                              height: 50,
                                                              child: Container(
                                                                decoration:  BoxDecoration(
                                                                    gradient: LinearGradient(
                                                                      begin: new Alignment(-1, 0),
                                                                      end: new Alignment(1, 0),
                                                                      colors: [

                                                                        Color.fromRGBO(147, 54, 253, 0.7),
                                                                        Color.fromRGBO(240, 80, 174, 0.7),
                                                                      ],
                                                                    ),
                                                                    borderRadius: BorderRadius.only(
                                                                      topRight: Radius.circular(25.0),
                                                                      topLeft: Radius.circular(25.0),
                                                                      bottomRight: Radius.circular(25.0),
                                                                      bottomLeft: Radius.circular(25.0),
                                                                    )
                                                                ),
                                                                child: ElevatedButton(
                                                                  style: ButtonStyle(
                                                                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                                            (Set<MaterialState> states) {
                                                                          if (states.contains(MaterialState.pressed)) {
                                                                            return Colors.transparent;
                                                                          }
                                                                          else { return Colors.transparent; } // Use the component's default.
                                                                        },
                                                                      ),
                                                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                          RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.circular(50.0),
                                                                          )
                                                                      )
                                                                  ),
                                                                  onPressed:() {
                                                                    Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(builder: (context) => SecondRoute()),
                                                                    );
                                                                  },


                                                                  child: Text('Billetterie', textAlign: TextAlign.center,
                                                                    style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white
                                                                    ),
                                                                  ),


                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                      ),



                                                    ]
                                                ),
                                              ),
                                            ),
                                          ),



                                        ],


                                      ),


                              ]
                          )
                      )
                  )
              ),




              PreferredSize(

                  preferredSize: Size.fromHeight(650.0),

                  child: Container(
                      height: 115,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.black))),

                      child: Material(
                        color: Color.fromRGBO(25, 9, 28, 1),
                        child: Align (

                            alignment: Alignment.center,

                        ),



                      )
                  )
              ),


              PreferredSize(

                  preferredSize: Size.fromHeight(650.0),

                  child: Container(
                      height: 115,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0, color: Colors.black))),

                      child: Material(
                        color: Color.fromRGBO(160, 53, 162, 1),
                        child: Align (

                            alignment: Alignment.center,

                            child: Padding(

                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0),

                              child: Container(
                                width: double.infinity,
                                child: Row (
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [



                                      SelectableText('Démarrer',
                                          style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20, color: PrimaryColor
                                          ),
                                          onTap:() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => SecondRoute()),
                                            );
                                          } ),



                                      Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.2),
                                        child: Padding(
                                          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.2),
                                          child: SelectableText('Notre histoire',
                                            style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20,color: PrimaryColor
                                            ),
                                          ),
                                        ),
                                      ),

                                      SelectableText('Contact',
                                        style: TextStyle( fontWeight: FontWeight.w400, fontSize: 20,color: PrimaryColor
                                        ),
                                      ),





                                    ]
                                ),
                              ),
                            )
                        ),



                      )
                  )
              ),

              PreferredSize(

                  preferredSize: Size.fromHeight(650.0),

                  child: Container(
                      height: 165,
                      width: double.infinity,


                      child: Material(
                          color: Color.fromRGBO(160, 53, 162, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: SelectableText('Copyright \u00a9 2021, Autogen. Tous droits réservés',
                                style: TextStyle( fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white

                                ),
                              ),
                            ),
                          ],
                        )



                      )
                  )
              ),


            ]
        )
    )
    ;}


  @override


  Widget build(BuildContext context) {
    return new Scaffold(


      appBar: Header(context),

      body: SmoothScrollWeb(
        child: Body(context),
        controller: controller,
      ),




    );
  }


}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Accueil',

      theme: ThemeData(

        fontFamily: 'Rubik',
        primaryColor: PrimaryColor,

      ),


      home: Firstroute(),


    );
  }
}