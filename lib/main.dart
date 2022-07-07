import 'package:flutter/material.dart';
import 'package:fokabay/Screens/description_page.dart';
import 'package:fokabay/Screens/landing_page.dart';
import 'package:fokabay/Screens/workshops_page.dart';
import 'package:fokabay/provider/workshop_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WorkShopProvider()),
      ],
      child: MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(330, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ],
        ),
        //  initialRoute: Routes.main,
        routes: {
          LandingPage.route: (context) => LandingPage(),
          WorkShops.route: (context) => WorkShops(),
          DescriptionPage.route: (context) => DescriptionPage(),
        },
        title: 'Fouka bay',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LandingPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
