import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';

class DataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //overflow fixed
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      title: Text("Covid - 19"),
      centerTitle: true,
      elevation: 50,
      actions: [
      ],
    );
  }
}
