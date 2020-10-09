import 'package:flutter/cupertino.dart';

class ImageContainer extends StatefulWidget {
	final image;

	const ImageContainer({Key key, this.image}): super(key: key);

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
	final image;

	_ImageContainerState({Key key, this.image});

  @override
  Widget build(BuildContext context) {
    return Align(
			alignment: Alignment(0.0, 0.0),
			child: null,
		);
  }
}
