import 'package:flutter/cupertino.dart';

class Indicator extends StatefulWidget {
	final index; 

	const Indicator({Key key, this.index}): super(key: key);

  @override
  _IndicatorState createState() => _IndicatorState(index);
}

class _IndicatorState extends State<Indicator> {
	final index;

	_IndicatorState(this.index);

  @override
  Widget build(BuildContext context) {
    return Align(
			alignment: Alignment(0.0, 0.0),
			child: null,
		);
  }
}
