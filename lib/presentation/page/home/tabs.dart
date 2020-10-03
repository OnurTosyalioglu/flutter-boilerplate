import 'package:flutter/material.dart';
import 'package:flutter_starter/locale/locale_init.dart';
import 'package:flutter_starter/presentation/page/chat/inbox.dart';
import 'package:flutter_starter/presentation/page/home/home.dart';
import 'package:flutter_starter/presentation/page/profile/profile.dart';
import 'package:flutter_starter/presentation/page/search/Search.dart';
import 'package:flutter_starter/presentation/page/share/Share.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
		var _index;

		indexHandler(int index){
			setState(() {
				_index = index;			  
			});
		}

    return Scaffold(
			body: [
				Home(),	
				Search(),
				Share(),
				Inbox(),
				Profile(),
			][_index],
			bottomNavigationBar: BottomNavigationBar(
				type: BottomNavigationBarType.fixed,
				currentIndex: _index,
				onTap: indexHandler,
				items: [
					BottomNavigationBarItem(
							icon: Icon(MdiIcons.home), 
							title: Text(LocaleInit.locale(context, 'home'))
					),
					BottomNavigationBarItem(
							icon: Icon(MdiIcons.magnify), 
							title: Text(LocaleInit.locale(context, 'search'))
					),
					BottomNavigationBarItem(
							icon: Icon(MdiIcons.plusCircleOutline), 
							title: Text(LocaleInit.locale(context, 'share'))
					),
					BottomNavigationBarItem(
							icon: Icon(MdiIcons.chatProcessingOutline), 
							title: Text(LocaleInit.locale(context, 'inbox'))
					),
					BottomNavigationBarItem(
							icon: Icon(MdiIcons.accountCircle), 
							title: Text(LocaleInit.locale(context, 'profile'))
					),
				],
			),
		);
  }
}
