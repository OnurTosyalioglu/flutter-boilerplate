import 'package:flutter/cupertino.dart';
import 'package:flutter_starter/locale/locale_init.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
		return Stack(
			children: <Widget>[
				Align(
					alignment: Alignment(0.0, 0.0),
					child: null,
				),
				Align(
					alignment: Alignment(0.0, 0.0),
					child: Text(
						LocaleInit.locale(context, "app"),
					),
				),
			],
		);
  }
}
