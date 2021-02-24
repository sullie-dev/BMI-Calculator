import 'package:flutter/material.dart';

import '../constants.dart';

class NavButton extends StatelessWidget {
  NavButton({@required this.event, @required this.onTap});

  final String event;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.00),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(
          child: Text(
            event,
            style: kNavButtonStyle,
          ),
        ),
      ),
    );
  }
}
