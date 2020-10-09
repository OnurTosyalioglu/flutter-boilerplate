import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/locale/locale_init.dart';
import 'package:flutter_starter/route/routes.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Align(
			alignment: Alignment(0.0, 0.0),
			child: FlatButton(
				child: Text(
					LocaleInit.locale(context, "forgotPassword"),
					style: TextStyle(),
				),
				onPressed: () {
					Navigator.pushNamed(context, Routes.recover);
				},
			),
		);
  }
}
