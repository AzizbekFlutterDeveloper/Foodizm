import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:foodizm/core/data/list_data.dart';
import 'package:foodizm/core/routes/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await  EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: langs,
      path: "assets/lang",
      fallbackLocale: const Locale("uz"),
      startLocale: const Locale("uz"),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  
  final _forRoute = Routes();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodizm',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      onGenerateRoute: _forRoute.onGenerateRoute,
    );
  }
}
