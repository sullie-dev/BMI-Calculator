import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableIcon extends StatelessWidget {
  ReusableIcon(this.icon, this.gender);

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.00,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender, style: kLabelStyle),
      ],
    );
  }
}
