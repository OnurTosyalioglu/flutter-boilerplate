import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/app.dart';
import 'package:flutter_starter/locale/locale_init.dart';
import 'package:flutter_starter/presentation/component/auth/redirect.dart';
import 'package:flutter_starter/presentation/component/intro/header.dart';
import 'package:flutter_starter/route/routes.dart';
import 'package:flutter_starter/style/size_config.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
	var _locale;

	localeHandler(value) {
		Locale locale;

		setState(() {
			_locale = value;				  
		});
		
		if (_locale == "ingilizce" || _locale == "english") {
		 	locale = Locale("en", "US"); 
		}
		
		if (_locale == "türkçe" || _locale == "turkish") {
		 	locale = Locale("tr", "TR"); 
		}
		
	  App.setLocale(context, locale);
	}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: Stack(
				children: <Widget>[
					Align(
						alignment: Alignment(0.0, 0.0),
						child: DropdownButton(
							value: LocaleInit.locale(context, _locale),
							items: <String>[
								LocaleInit.locale(context, "english"),
								LocaleInit.locale(context, "turkish"),
							].map((e) => DropdownMenuItem(
									value: e, 
									child: Text(e),
									)
								).toList(),
							onChanged: localeHandler,
						),
					),
					Header(),
					Align(
						alignment: Alignment(0.0, 0.0),	
						child: TextFormField(
              decoration: InputDecoration(
								prefixIcon: Icon(MdiIcons.email),
							),
            ),
					),
					Align(
						alignment: Alignment(0.0, 0.0),
						child: TextFormField(
              decoration: InputDecoration(
								prefixIcon: Icon(MdiIcons.key),
							),
            ),
					),
					Align(
						alignment: Alignment(0.0, 0.0),
						child: ButtonTheme(
							minWidth: SizeConfig.widthMultiplier * 90,
							child: RaisedButton(
								shape: StadiumBorder(),
								onPressed: null,	
								child: Text(LocaleInit.locale(context, "login")),
							),
						),
					),
					Align(
						alignment: Alignment(0.0, 0.0),
						child: ButtonTheme(
							minWidth: SizeConfig.widthMultiplier * 90,
							child: RaisedButton(
								shape: StadiumBorder(),
								onPressed: null,	
								child: Text(
									LocaleInit.locale(context, "continueWithFacebook")
								),
							),
						),
					),
					Align(
						alignment: Alignment(0.0, 0.0),
						child: ButtonTheme(
							minWidth: SizeConfig.widthMultiplier * 90,
							child: RaisedButton(
								shape: StadiumBorder(),
								onPressed: null,	
								child: Text(
									LocaleInit.locale(context, "continueWithGoogle"),
								),
							),
						),
					),
					Redirect(text: 'dontHaveAnAccount', route: Routes.signup),
				],
			),
		);
  }
}
