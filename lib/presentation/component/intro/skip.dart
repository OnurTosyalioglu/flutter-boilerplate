import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/locale/locale_init.dart';

class Skip extends StatefulWidget {
  @override
  _SkipState createState() => _SkipState();
}

class _SkipState extends State<Skip> {
  @override
  Widget build(BuildContext context) {
    return Align(
			alignment: Alignment(0.0, 0.0),
			child: RaisedButton(
				onPressed: () {},
				child: Text(LocaleInit.locale(context, "skip")),
			),
		);
  }
}
