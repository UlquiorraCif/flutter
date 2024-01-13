import 'package:flutter/material.dart';
import 'package:effectivesber/res/theme.dart';
import 'package:effectivesber/screens/profile_screen.dart';
import 'package:effectivesber/screens/settings_screen.dart';
import 'package:effectivesber/widgets/my_sliver_appbar_widget.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      home: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[const MySliverAppbar()];
            },
            body: const TabBarView(
              children: [ProfileScreen(), SettingsScreen()],
            ),
          ),
        ),
      ),
    );
  }
}
