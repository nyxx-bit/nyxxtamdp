import 'package:flutter/material.dart';
import 'package:nyxxtamdp/util/const.dart';

class TempHome extends StatelessWidget {
  const TempHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.appName),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}
