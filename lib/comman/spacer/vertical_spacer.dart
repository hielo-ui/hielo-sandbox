import 'package:flutter/material.dart';

class VerticalSpacer extends SizedBox {
  VerticalSpacer(
      {Key? key, required BuildContext context, required double height})
      : super(key: key, height: MediaQuery.of(context).size.height * height);
}
