import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/presentation/component/intro/catchword.dart';
import 'package:flutter_starter/presentation/component/intro/header.dart';
import 'package:flutter_starter/presentation/component/intro/image_container.dart';
import 'package:flutter_starter/presentation/component/intro/indicator.dart';
import 'package:flutter_starter/presentation/component/intro/intro_word.dart';
import 'package:flutter_starter/presentation/component/intro/skip.dart';

class Intro extends StatefulWidget {
	final word;
	final image;
	final index;

	const Intro({Key key, this.word, this.image, this.index}): super(key: key);

  @override
  _IntroState createState() => _IntroState(word, image, index);
}

class _IntroState extends State<Intro> {
  final index;
  final image;
  final word;

  _IntroState(this.index, this.image, this.word);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: Stack(
				children: <Widget>[
					Skip(),
					Header(),
					Catchword(),
					ImageContainer(image: image,),
					IntroWord(word: word,),
					Indicator(index: index),
				],
			);
		);
  }
}
