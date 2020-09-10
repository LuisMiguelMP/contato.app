import 'package:flutter/material.dart';
import 'package:contato/routes/routes.dart';
import 'package:contato/utils/constants/constants.dart';
import 'package:contato/utils/localizations/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        initialRoute: homeRoute,
        onGenerateRoute: Routes.generateRoute,
        onGenerateTitle: (BuildContext context) =>
            I18n.of(context).translate('title'),
        localizationsDelegates: I18n.localizationsDelegates(),
        supportedLocales: I18n.supportedLocales());
  }
}
