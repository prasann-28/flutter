import 'package:flutter/material.dart';
import '../constants/constants.dart';

class iconContentWidget extends StatelessWidget {

  iconContentWidget({this.icon, this.label});
  IconData icon;
  String label;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
            icon,
            size: 80
        ),

        SizedBox(
          height: 15,
        ),

        Text(
          label,
          style: klabelTextStyle,)

      ],
    );
  }
}
