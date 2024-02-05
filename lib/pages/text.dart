import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpandableText extends StatefulWidget {
  ExpandableText(this.text, {super.key});

  final String text;
  bool isExpanded = false;

  @override
  // ignore: library_private_types_in_public_api
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
              constraints: widget.isExpanded
                  ? const BoxConstraints()
                  : const BoxConstraints(maxHeight: 100.0),
              child: Text(
                widget.text,
                softWrap: true,
                overflow: TextOverflow.fade,
              )),
          widget.isExpanded
              ? TextButton(
                  child: const Text('Show Less',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w900)),
                  onPressed: () => setState(() => widget.isExpanded = false))
              : TextButton(
                  child: const Text(
                    'Read more',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w900),
                  ),
                  onPressed: () => setState(() => widget.isExpanded = true))
        ]);
  }
}
