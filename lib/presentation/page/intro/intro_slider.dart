import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/presentation/page/intro/intro.dart';
import 'package:flutter_starter/style/images.dart';

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: PageView(
				children: <Widget>[
					Intro(word: "introWordFirst", image: Images.introFirst, index: 1,),
					Intro(word: "introWordSecond", image: Images.introSecond, index: 2,),
					Intro(word: "introWordThird", image: Images.introThird, index: 3,),
				],
			),
		);
  }
}
