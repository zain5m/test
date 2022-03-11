import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adaptive_Indicator extends StatelessWidget {
  String? OS;
  Adaptive_Indicator({this.OS});
  @override
  Widget build(BuildContext context) {
    if (this.OS == 'android') return CircularProgressIndicator();

    return CupertinoActivityIndicator();
  }
}
