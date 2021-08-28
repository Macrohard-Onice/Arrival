import 'package:flutter/material.dart';

import 'package:flutter_app/models/icons.dart';

import 'package:flutter_app/constants.dart';

import 'package:url_launcher/url_launcher.dart';

class ArrivalAppBar extends StatefulWidget {
  ArrivalAppBar({Key key}) : super(key: key);

  @override
  _ArrivalAppBar createState() => _ArrivalAppBar();
}

class _ArrivalAppBar extends State<ArrivalAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ArrivalTheme.backgroundColor.withOpacity(.6),
              ArrivalTheme.backgroundColor.withOpacity(0),
            ],
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 3,
              child: IconButton(
                  icon: Icon(
                    ArrivalIcons.instagram_line,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    const url = 'https://www.instagram.com/arrival.project/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  })),
          Expanded(
              flex: 3,
              child: IconButton(
                  icon: Icon(
                    ArrivalIcons.coupon_line,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    const url = 'https://github.com/himanshusharma89';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  })),
          Expanded(
              flex: 3,
              child: IconButton(
                  icon: Icon(
                    ArrivalIcons.phone_line,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    const url = 'https://github.com/himanshusharma89';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  })),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
