import 'package:flutter/material.dart';

import '../../comman/spacer/horizontal_spacer.dart';

class SampleButton extends StatefulWidget {
  final Color? color;
  final String? text;
  final Color? textColor;
  final double? borderRadius;
  final Widget? preWidget;
  final Widget? postWidget;

  const SampleButton({
    Key? key,
    this.color = Colors.blue,
    this.text = "Download",
    this.borderRadius = 8.0,
    this.textColor = Colors.white,
    this.preWidget = const SizedBox(),
    this.postWidget = const SizedBox(),
  }) : super(key: key);

  @override
  State<SampleButton> createState() => _SampleButtonState();
}

class _SampleButtonState extends State<SampleButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(widget.borderRadius as double),
            boxShadow: [
              BoxShadow(
                color: widget.color as Color,
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.preWidget as Widget,
                HorizontalSpacer(context: context, width: 0.02),
                Text(
                  widget.text as String,
                  style: TextStyle(
                    color: widget.textColor,
                  ),
                ),
                HorizontalSpacer(context: context, width: 0.02),
                widget.postWidget as Widget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
