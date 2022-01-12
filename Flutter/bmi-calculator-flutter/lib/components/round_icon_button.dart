import 'package:flutter/material.dart';
import '../constants/constants.dart';

class RoundIconButton extends StatelessWidget {

  final IconData child;
  final Function onPressed;
  RoundIconButton({@required this.child,@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
          width: 50,
          height: 50
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}