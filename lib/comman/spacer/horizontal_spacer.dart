import 'package:flutter/material.dart';

class HorizontalSpacer extends SizedBox {
  HorizontalSpacer(
      {Key? key, required BuildContext context, required double width})
      : super(key: key, width: MediaQuery.of(context).size.width * width);
}
