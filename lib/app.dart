import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/locale/locale_init.dart';
import 'package:flutter_starter/route/router.dart';
import 'package:flutter_starter/route/routes.dart';
import 'package:flutter_starter/style/size_config.dart';

class App extends StatefulWidget {
	static void setLocale(BuildContext context, Locale locale) {
    _AppState state = context.findAncestorStateOfType<_AppState>();
    state.setLocale(locale);
  }

  @override
  _AppState createState() => _AppState();

}

class _AppState extends State<App> {
	Locale _locale;

	void setLocale(Locale locale) {
		setState(() {
			_locale = locale;		  
		});
	}

	@override
  void initState() {
    // TODO: implement initState
    super.initState();
	}
	
  @override
  Widget build(BuildContext context) {
		return LayoutBuilder(
			builder: (context, constraints) {
					return OrientationBuilder(
						builder: (context, orientation) {
							SizeConfig().init(constraints, orientation);
							
							return MaterialApp(
								onGenerateRoute: Router.generateRoute,
								initialRoute: Routes.intro,
								debugShowCheckedModeBanner: false,
								supportedLocales: LocaleInit.supportedLocales,
								localizationsDelegates: LocaleInit.localizationDelegates,
	              localeResolutionCallback: (deviceLocale, supportedLocales) {
                	for(var locale in supportedLocales) {
                  	if (locale.languageCode == deviceLocale.languageCode && 
												locale.countryCode == deviceLocale.countryCode) {
                    	return deviceLocale;
                  	}
                	}
                	return supportedLocales.first;
              	},
							);
					});
				},
			);
  }
}
