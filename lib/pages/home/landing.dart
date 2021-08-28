import 'package:flutter/material.dart';

import 'package:flutter_app/constants.dart';

import 'package:flutter_app/widgets/buttons.dart';

class HomeLanding extends StatefulWidget {
  HomeLanding({Key key}) : super(key: key);

  @override
  _HomeLanding createState() => _HomeLanding();
}

class _HomeLanding extends State<HomeLanding> {
  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: [
                ArrivalTheme.backgroundColor.withOpacity(.4),
                ArrivalTheme.backgroundColor
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height * .3;

    return Container(
      height: MediaQuery.of(context).size.height.floorToDouble(),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          _buildGradient(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size,
                  height: size,
                  child: Image.asset(
                    'assets/balloon.png',
                  ),
                ),
                SizedBox(height: 100),
                HeaderButton(
                  title: 'Billeterie',
                  onTap: () {},
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: size,
              height: size,
              child: Container(
                width: 1,
                height: 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  boxShadow: [
                    BoxShadow(
                      color: ArrivalTheme.secondaryColor.withOpacity(0),
                      spreadRadius: 30,
                      blurRadius: 50,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
