import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/locale/locale_init.dart';

class Redirect extends StatefulWidget {
	final text;
	final route;

	const Redirect({Key key, this.text, this.route}) : super(key: key);

  @override
  _RedirectState createState() => _RedirectState(text, route);
}

class _RedirectState extends State<Redirect> {
	final text;
	final route;

	_RedirectState(this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return Align(
			alignment: Alignment(0.0, 0.0),
			child: FlatButton(
				child: Text(
					LocaleInit.locale(context, text),
					style: TextStyle(),
				),
				onPressed: () {
					Navigator.pushNamed(context, route);
				},
			),
		);
  }
}
