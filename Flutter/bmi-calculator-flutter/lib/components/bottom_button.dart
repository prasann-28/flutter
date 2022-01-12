import 'package:flutter/material.dart';
import '../constants/constants.dart';

class BottomButton extends StatelessWidget {

  final Function onTap;
  final String label;
  BottomButton({@required this.label,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
        padding: EdgeInsets.only(bottom: 25),
        child: Text(label, style: kLargeButtonTextStyle,),
      ),
    );
  }
}