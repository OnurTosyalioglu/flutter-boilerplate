import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/locale/locale_init.dart';

class IntroWord extends StatefulWidget {
	final word;

	const IntroWord({Key key, this.word}): super(key: key);

  @override
  _IntroWordState createState() => _IntroWordState(word);
}

class _IntroWordState extends State<IntroWord> {
	final word;

	_IntroWordState(this.word);

  @override
  Widget build(BuildContext context) {
    return Align(
			alignment: Alignment(0.0, 0.0),
			child: Text(
				LocaleInit.locale(context, word),
			),
		);
  }
}
