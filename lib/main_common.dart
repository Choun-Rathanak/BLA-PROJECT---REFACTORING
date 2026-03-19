import 'package:flutter/material.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void mainCommon(List<SingleChildWidget> providers) {
  runApp(
    MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: blaTheme,
        home: Scaffold(body: HomeScreen()),
      ),
    ),
  );
}
