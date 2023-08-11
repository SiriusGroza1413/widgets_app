import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'package:show_widgets_app/src/pages/alert_page.dart';
import 'package:show_widgets_app/src/routes/routes.dart';

//import 'package:show_widgets_app/src/pages/home_temp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('es', 'US'),
        const Locale('es', 'ES'),
      ],
      title: 'Components App',
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context ) => AlertPage()
        );
      },
    );
  }
}