import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/presentation/page/auth/login.dart';
import 'package:flutter_starter/presentation/page/auth/recover.dart';
import 'package:flutter_starter/presentation/page/auth/signup.dart';
import 'package:flutter_starter/presentation/page/home/tabs.dart';
import 'package:flutter_starter/presentation/page/intro/intro_slider.dart';
import 'routes.dart';

class Router {
	static Route<dynamic> generateRoute(RouteSettings settings) {
		switch(settings.name) {
			case Routes.intro:
				return MaterialPageRoute(builder: (_) => IntroSlider());
			case Routes.login:
				return MaterialPageRoute(builder: (_) => Login());
			case Routes.signup:
				return MaterialPageRoute(builder: (_) => Signup());
			case Routes.recover:
				return MaterialPageRoute(builder: (_) => Recover());
			case Routes.tabs:
				return MaterialPageRoute(builder: (_) => Tabs());
		}		
	}
}
